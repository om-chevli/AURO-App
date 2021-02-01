import 'dart:ui';

import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: Stack(
        children: <Widget>[
          //background image
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 240, 201, 1),
            ),
          ),

          //AURO Logo
          Center(
            
            child: Container(
              margin: EdgeInsets.only(
                bottom: deviceHeight / 2,
              ),
              child: Image(
                image: AssetImage('assets/images/motherLogo.PNG'),
                height: deviceWidth / 2 + 50,
                width: (deviceWidth / 2) + 50,
              ),
            ),
          ),

          //school of IT text AbrilFatface
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '"By your stumbling the world is perfected."',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                    // fontWeight: FontWeight.w800,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 100),
                Text(
                  'MADE WITH LOVE BY SCHOOL OF I.T',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
