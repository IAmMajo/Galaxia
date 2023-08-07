import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:galaxia/models/neuheiten_model.dart';

class SearchPage extends StatefulWidget {
  final int randomNumber;

  const SearchPage({super.key, required this.randomNumber});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<NeuheitenModel> neuheiten = [];
  List<NeuheitenModel> searchResults = [];

  @override
  void initState() {
    super.initState();
    getHighlight();
  }

  void getHighlight() {
    neuheiten = NeuheitenModel.getneuheiten();
  }

  @override
  Widget build(BuildContext context) {
    List<NeuheitenModel> neuheiten = [];
    List<NeuheitenModel> searchResults = [];

    void getHighlight() {
      neuheiten = NeuheitenModel.getneuheiten();
    }

    getHighlight();
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(neuheiten[widget.randomNumber].image),
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
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<dynamic>(
          backgroundColor: Colors.black.withOpacity(0.8),
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(item.image),
                                fit: BoxFit.cover),
                          ),
                        ),
                        CircleAvatar(
                            radius: 26,
                            backgroundColor: Colors.black.withOpacity(0.5),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                ' ▶',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                    Container(
                      height: 100,
                      width: 250,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(item.logo),
                              fit: BoxFit.contain)),
                    ),
                    Container(
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'STREAMEN AUF',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 1,
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  item.platform,
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.black.withOpacity(0.5),
                            ),
                            overlayColor: MaterialStateProperty.all<Color>(
                              Colors.white.withOpacity(0.1),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            '+ Merken',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('${item.fsk}.png'))),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 20),
                      child: Text(
                        item.des,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          const Text(
                            'Genre: ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          ),
                          Text(
                            item.genre,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          const Text(
                            'Besetzung: ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Colors.grey),
                          ),
                          Text(
                            item.actor,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        child: const Text('close'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
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
                  Center(
                    child: Container(
                      height: 80,
                      width: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(item.logo),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
