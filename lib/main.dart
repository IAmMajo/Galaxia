import 'dart:ui';
//flutter packages
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/outlined.dart';
//selfmade packages
import 'package:streamflix/models/highlight_model.dart';
//color scheme
import 'color_schemes.g.dart';
//list of pages of the application
import 'pages/home.dart';
import 'pages/lists.dart';
import 'pages/search.dart';
import 'pages/settings.dart';
import 'pages/soon.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  //Firebase initialization
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //für die tests//
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  //
  print(FirebaseAuth.instance.currentUser);
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      print("User not signed in!");
    } else {
      print('User is signed in!');
    }
  });
  //License registration
  LicenseRegistry.addLicense(() async* {
    yield LicenseEntryWithLineBreaks(
      ['Roboto'],
      await rootBundle.loadString('assets/licenses/Roboto.txt'),
    );
  });
  runApp(const StreamflixApp());
}

class StreamflixApp extends StatelessWidget {
  static InteractiveInkFeatureFactory get splashFactory =>
      kIsWeb ? InkRipple.splashFactory : InkSparkle.splashFactory;

  const StreamflixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Navigation(),
      theme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
        fontFamily: 'Roboto',
        splashFactory: splashFactory,
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
        fontFamily: 'Roboto',
        iconTheme: const IconThemeData(grade: -25),
        splashFactory: splashFactory,
      ),
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({super.key});
  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 2;
  List<HighlightModel> highlight = [];
  void getHighlightForDisplay() {
    highlight = HighlightModel.getHighlight();
  }

  @override
  Widget build(BuildContext context) {
    getHighlightForDisplay();
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 33, 33, 33).withOpacity(0.4),
            ),
            child: NavigationBar(
              //Hier borderRadius unterbringen
              onDestinationSelected: (int index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              selectedIndex: currentPageIndex,
              destinations: navbar,
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(highlight[0].image),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            color: Colors.black.withOpacity(0.7),
            child: <Widget>[
              SearchPage(highlight: highlight[0]),
              const SoonPage(),
              const HomePage(),
              const ListsPage(),
              const SettingsPage(),
            ][currentPageIndex],
          ),
        ),
      ),
    );
  }

  List<Widget> get navbar {
    return const <Widget>[
      NavigationDestination(
        selectedIcon: Icon(MaterialSymbols.search, grade: 200),
        icon: Icon(MaterialSymbols.search),
        label: 'Suche',
      ),
      NavigationDestination(
        selectedIcon: Icon(MaterialSymbols.schedule, grade: 200, fill: 1),
        icon: Icon(MaterialSymbols.schedule),
        label: 'Bald',
      ),
      NavigationDestination(
        selectedIcon: Icon(MaterialSymbols.home, grade: 200, fill: 1),
        icon: Icon(MaterialSymbols.home),
        label: 'Home',
      ),
      NavigationDestination(
        selectedIcon: Icon(MaterialSymbols.list, grade: 200),
        icon: Icon(MaterialSymbols.list),
        label: 'Listen',
      ),
      NavigationDestination(
        selectedIcon: Icon(MaterialSymbols.settings, grade: 200, fill: 1),
        icon: Icon(MaterialSymbols.settings),
        label: 'Optionen',
      ),
    ];
  }
}
