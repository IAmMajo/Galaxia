import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:streamflix/models/highlight_model.dart';
import 'package:streamflix/models/neuheiten_model.dart';

class SearchPage extends StatefulWidget {
  final HighlightModel highlight;

  const SearchPage({Key? key, required this.highlight}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<HighlightModel> highlight = [];
  List<NeuheitenModel> neuheiten = [];
  List<NeuheitenModel> searchResults = [];

  @override
  void initState() {
    super.initState();
    getHighlight();
  }

  void getHighlight() {
    highlight = HighlightModel.getHighlight();
    neuheiten = NeuheitenModel.getneuheiten();
  }

  @override
  Widget build(BuildContext context) {
    List<HighlightModel> highlight = [];
    List<NeuheitenModel> neuheiten = [];
    List<NeuheitenModel> searchResults = [];

    void getHighlight() {
      highlight = HighlightModel.getHighlight();
      neuheiten = NeuheitenModel.getneuheiten();
    }

    getHighlight();
    return Scaffold(
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
              _searchbar(),
              const SizedBox(
                height: 20,
              ),
              _searchergebnis(neuheiten),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _buildNeuheitenItem(NeuheitenModel item) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          // Hintergrundbild
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(item.image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          // Schwarzer transparenter Gradient
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
          ),
          // Texte
          Positioned(
            left: 8,
            bottom: 8,
            right: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                Text(
                  item.genre,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void searchNeuheiten(String query) {
    searchResults.clear();
    if (query.isEmpty) {
      setState(() {
        searchResults.addAll(neuheiten);
      });
    } else {
      setState(() {
        searchResults.addAll(neuheiten.where(
          (neuheit) => neuheit.name.toLowerCase().contains(query.toLowerCase()),
        ));
      });
    }
  }

  Container _searchbar() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 20,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black.withOpacity(0.4),
            contentPadding: const EdgeInsets.all(15),
            hintText: 'Suche...',
            hintStyle: const TextStyle(
              fontSize: 14,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset("Search.svg"),
            ),
            suffixIcon: SizedBox(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const VerticalDivider(
                      color: Colors.black,
                      indent: 10,
                      endIndent: 10,
                      thickness: 0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset("Filter.svg"),
                    ),
                  ],
                ),
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none)),
        onChanged: searchNeuheiten,
      ),
    );
  }

  Column _searchergebnis(List<NeuheitenModel> neuheiten) {
    final displayList = searchResults.isNotEmpty ? searchResults : neuheiten;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: const [
              Text(
                'Ergebniss',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 6),
              Expanded(
                flex: 1,
                child: Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 800,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: displayList.length,
            padding: const EdgeInsets.only(left: 20, right: 20),
            itemBuilder: (context, index) {
              return _buildNeuheitenItem(displayList[index]);
            },
          ),
        ),
      ],
    );
  }
}
