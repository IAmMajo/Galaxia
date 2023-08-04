import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:streamflix/models/highlight_model.dart';
import 'package:streamflix/models/soon_model.dart';

class SoonPage extends StatelessWidget {
  const SoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<HighlightModel> highlight = [];
    List<SoonEntriesModel> soonentries = [];

    void getHighlight(){
      highlight = HighlightModel.getHighlight();
    }
    getHighlight();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(highlight[0].image),
            fit: BoxFit.cover,
          )
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            color: Colors.black.withOpacity(0.7),
            child: ListView(
              children: [
                Column(
                  children: [
                    //Erst das Highlioght
                    Column(
                      children: [
                        //Datum
                        Text(soonentries[0].datum,
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                        ),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 300,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(soonentries[0].image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 150,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(soonentries[0].logo)
                                    ),
                                  ),
                                  ),
                              ],
                            ),
                            Column(
                              children: [

                                Text(soonentries[0].tags),

                                    
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
                            'Erinnern',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                                 
                                
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
