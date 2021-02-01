import 'package:flutter/material.dart';
import 'package:auro_app/widgets/mood_button.dart';

class MentalTestSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.arrow_back),
                ),
                SizedBox(height: 30),
                Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Why are you feeling "option"?',
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 36,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 30),
                    MoodButton('Bored'),
                    MoodButton('Busy'),
                    MoodButton('Stressed'),
                    MoodButton('Tired'),
                  ],
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Text(
                      'root>',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
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
