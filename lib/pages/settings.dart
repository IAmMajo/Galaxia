import 'dart:ui';
import 'package:galaxia/models/highlight_model.dart';
import 'package:flutter/material.dart';
import 'package:galaxia/components/logout.dart';
import 'package:galaxia/components/switch.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<HighlightModel> highlight = [];

    void getHighlight() {
      highlight = HighlightModel.getHighlight();
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
                _logOutSec(),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Text(
                            'Altersfreigabe',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Divider(
                            color: Colors.white,
                            thickness: 2,
                          ),
                        ),
                      ]),
                      Row(
                        children: const [
                          SwitchExample(),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text('Inhalte mit FSK 18 ausblenden'),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _logOutSec() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(children: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text(
                'Log-Out',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Divider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
          ]),
          const Logout()
        ],
      ),
    );
  }
}

//Logout()
