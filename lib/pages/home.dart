import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:streamflix/models/highlight_model.dart';
import 'package:streamflix/models/meineListe_model.dart';
import 'package:streamflix/models/neuheiten_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NeuheitenModel> neuheiten = [];
  List<HighlightModel> highlight = [];
  List<MeineListeModel> meineListe = [];

  void getInitialInfo() {
    neuheiten = NeuheitenModel.getneuheiten();
    highlight = HighlightModel.getHighlight();
    meineListe = MeineListeModel.getmeineListe();
  }

  @override
  Widget build(BuildContext context) {
    getInitialInfo();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(highlight[0].image),
          fit: BoxFit.cover,
        )),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            color: Colors.black.withOpacity(0.7),
            child: ListView(
              children: [
                appBar(),
                _dailyHighlight(),
                const SizedBox(
                  height: 40,
                ),
                _neuheiten(),
                const SizedBox(
                  height: 40,
                ),
                _meineListe(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _meineListe() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Meine Liste',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 150,
          child: ListView.separated(
            itemCount: meineListe.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
            separatorBuilder: (context, index) => const SizedBox(
              width: 25,
            ),
            itemBuilder: (context, index) {
              return Container(
                width: 110,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(meineListe[index].image),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      meineListe[index].name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Text(
                      meineListe[index].genre,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 12),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Column _neuheiten() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Neuheiten',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 150,
          child: ListView.separated(
            itemCount: neuheiten.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
            separatorBuilder: (context, index) => const SizedBox(
              width: 25,
            ),
            itemBuilder: (context, index) {
              return Container(
                width: 110,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(neuheiten[index].image),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      neuheiten[index].name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Text(
                      neuheiten[index].genre,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 12),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Container _dailyHighlight() {
    return Container(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      height: 300,
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            image: AssetImage(highlight[0].image),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                highlight[0].name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
              Text(
                highlight[0].genre,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: TextButton(
                        style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black.withOpacity(0.5)),
                        overlayColor: MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.1)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(8.0),
                           ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('▶ Streamen',
                      style: TextStyle(
                        color: Colors.white
                       ),
                     ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: TextButton(
                        style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black.withOpacity(0.5)),
                        overlayColor: MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.1)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(8.0),
                           ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('+ Liste hinzufügen',
                      style: TextStyle(
                        color: Colors.white
                       ),
                     ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Home',
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset(
            "HamburgerImage.png",
            height: 20,
            width: 20,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("PB.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
