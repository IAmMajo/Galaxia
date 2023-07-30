import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/outlined.dart';

import 'color_schemes.g.dart';
import 'pages/home.dart';
import 'pages/lists.dart';
import 'pages/search.dart';
import 'pages/settings.dart';
import 'pages/soon.dart';

void main() {
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
        colorScheme: lightColorScheme,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: navbar,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      ),
      body: <Widget>[
        const SearchPage(),
        const SoonPage(),
        HomePage(),
        const ListsPage(),
        const SettingsPage(),
      ][currentPageIndex],
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
