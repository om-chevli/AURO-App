import 'package:flutter/material.dart';
import 'package:auro_app/widgets/mood_button.dart';

class MentalTest extends StatelessWidget {
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
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'How are you feeling?',
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 36,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30),
                MoodButton('Bad'),
                MoodButton('Fearful'),
                MoodButton('Angry'),
                MoodButton('Surprised'),
                MoodButton('Sad'),
                MoodButton('Disgusted'),
                MoodButton('Happy'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
