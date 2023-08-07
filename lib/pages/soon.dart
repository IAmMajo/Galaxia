import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:galaxia/models/neuheiten_model.dart';
import 'package:galaxia/models/soon_model.dart';

class SoonPage extends StatelessWidget {
  final int randomNumber;
  const SoonPage({super.key, required this.randomNumber});

  @override
  Widget build(BuildContext context) {
    List<NeuheitenModel> neuheiten = [];
    List<SoonEntriesModel> soonentries = [];

    void getHighlight() {
      neuheiten = NeuheitenModel.getneuheiten();
      soonentries = SoonEntriesModel.getSoonEntries();
    }

    getHighlight();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(neuheiten[randomNumber].image),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            color: Colors.black.withOpacity(0.7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  // Wrap the ListView.separated with Expanded
                  child: ListView.separated(
                    itemCount: soonentries.length,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 20),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                //Datum
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Text(
                                        soonentries[index].datum,
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: Divider(
                                        color: Colors.white,
                                        thickness: 2,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  soonentries[index].image),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 65,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  soonentries[index].logo),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 150,
                                            width: 170,
                                            child: Text(
                                              soonentries[index].des,
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: Row(
                                              children: [
                                                TextButton(
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                      Colors.black
                                                          .withOpacity(0.5),
                                                    ),
                                                    overlayColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                      Colors.white
                                                          .withOpacity(0.1),
                                                    ),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                  child: const Text(
                                                    '🔔Erinnern',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              '${soonentries[index].fsk}.png'))),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
