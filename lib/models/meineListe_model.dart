import 'package:flutter/material.dart';

class MeineListeModel{
  String name;
  String genre;
  String image;
  String platform;

  MeineListeModel({
    required this.name,
    required this.genre,
    required this.image,
    required this.platform,
  });

  static List < MeineListeModel > getmeineListe(){
    List < MeineListeModel > meineListe = [];
    
    meineListe.add(
      MeineListeModel(
      name: 'Spider-Man',
      genre: 'MARVEL',
      image: "SpiderManNoWayHome.jpg",
      platform: "N"
      ),
    );


    meineListe.add(
      MeineListeModel(
      name: 'Game of Thrones',
      genre: 'Mittelalter',
      image: "series/GameofThrones.jpg",
      platform: "WOW"
      ),
    );

    meineListe.add(
      MeineListeModel(
      name: 'König der Löwen',
      genre: 'Disney',
      image: "TheLionKingRemake.jpg",
      platform: "D"
      ),
    );

    return meineListe;
  }
}