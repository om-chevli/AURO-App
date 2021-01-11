import 'dart:ui';

import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
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
            height: deviceHeight - 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/landing_background.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8),
                    BlendMode.dstATop,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.25),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ]),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2.0,
                sigmaY: 2.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.0),
                ),
              ),
            ),
          ),
          //Blue layer
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          ),
          //AURO Logo
          Center(
            child: Container(
              margin: EdgeInsets.only(
                bottom: deviceHeight / 2,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ]),
              child: Image(
                image: AssetImage('assets/images/auro_logo.png'),
              ),
            ),
          ),
          //school of IT text
          Center(
            child: Container(
              margin: EdgeInsets.only(
                top: deviceHeight - (deviceHeight * 30 / 100),
              ),
              padding: EdgeInsets.all(5),
              child: Text(
                'BUILT WITH LOVE BY SCHOOL OF I.T',
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 13,
                  backgroundColor: Colors.grey.withOpacity(0.1),
                ),
              ),
            ),
          ),
          //Login/Register Bar
          SafeArea(
            child: Align(
              widthFactor: double.infinity,
              heightFactor: double.infinity,
              alignment: Alignment.bottomRight,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    //Log in
                    Container(
                      child: Text('LOG IN'),
                    ),
                    //Register
                    Container(
                      child: Text('REGISTER'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
