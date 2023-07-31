import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:streamflix/models/highlight_model.dart';
import 'package:streamflix/models/listsview_model.dart';

class ListsPage extends StatelessWidget {
  const ListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<HighlightModel> highlight = [];
    List<ListModel> lists = [];

    void getHighlight() {
      highlight = HighlightModel.getHighlight();
      lists = ListModel.getlists();
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
                _listview(lists),
                const SizedBox(
                  height: 30,
                ),
                _newListbtn()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _newListbtn() {
    return Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 150, right: 150),
                  child: TextButton(
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
                              '+ Liste hinzufügen',
                              style: TextStyle(color: Colors.white),
                            ),
                  ),
                ),
              );
  }

  Column _listview(List<ListModel> lists) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Meine Listen',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ListView.separated(
          itemCount: lists.length,
          shrinkWrap: true,
          separatorBuilder: (context, index) => const SizedBox(
            height: 25,
          ),
          padding: const EdgeInsets.only(left: 20, right: 20),
          itemBuilder: ((context, index) {
            return Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff1D1617).withOpacity(0.07),
                    offset: const Offset(0, 10),
                    blurRadius: 40,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        lists[index].name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '${lists[index].anzahlserien} Serien | ${lists[index].anzahlfilme} Filme',
                        style: const TextStyle(
                          color: Color(0xff7B6F72),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      '▶',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          }),
        )
      ],
    );
  }
}
