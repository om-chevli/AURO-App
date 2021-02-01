import 'dart:ui';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new BottomAppBar(
      elevation: 15,
      child: Container(
        height: 60,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Image(
                image: AssetImage(
                  'assets/images/profile.png',
                ),
                height: 30,
                width: 30,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Image(
                image: AssetImage(
                  'assets/images/newspaper.png',
                ),
                height: 35,
                width: 35,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Image(
                image: AssetImage(
                  'assets/images/menu.png',
                ),
                height: 35,
                width: 35,
              ),
            ),
            // GestureDetector(
            //   onTap: () {},
            //   child: Image(
            //     image: AssetImage(
            //       'assets/images/conversation.png',
            //     ),
            //     height: 35,
            //     width: 35,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
