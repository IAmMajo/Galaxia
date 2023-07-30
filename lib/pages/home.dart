import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:streamflix/models/highlight_model.dart';
import 'package:streamflix/models/meineListe_model.dart';
import 'package:streamflix/models/neuheiten_model.dart';



class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NeuheitenModel> neuheiten = [];
  List<HighlightModel> highlight = [];
  List<MeineListeModel> meineListe = [];


  void getInitialInfo(){
    neuheiten = NeuheitenModel.getneuheiten();
    highlight = HighlightModel.getHighlight();
    meineListe = MeineListeModel.getmeineListe();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home', style: Theme.of(context).textTheme.displayLarge),
    );
  }
}