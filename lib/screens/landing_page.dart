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
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(3, 3),
                    ),
                  ]),
              child: Image(
                image: AssetImage('assets/images/auro_logo.png'),
                height: 100,
                width: 240,
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
                'MADE WITH LOVE BY SCHOOL OF I.T',
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
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
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        margin: EdgeInsets.only(
                          bottom: 25,
                          left: 20,
                          right: 10,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: deviceWidth - (deviceWidth * 90 / 100),
                          vertical: 15,
                        ),
                        child: Text(
                          'LOG IN',
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    //Register
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(
                          bottom: 25,
                          left: 10,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: deviceWidth - (deviceWidth * 90 / 100),
                          vertical: 15,
                        ),
                        child: Text(
                          'REGISTER',
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
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
