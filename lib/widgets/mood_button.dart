import 'dart:math';
import 'package:flutter/material.dart';
class MoodButton extends StatelessWidget {
final String mood;

MoodButton(this.mood);
final colors=UniqueColorGenerator.getColor();
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: colors,
        boxShadow: [
          BoxShadow(
            color: colors.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(3, 5),
          )
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 22),
      margin: EdgeInsets.only(bottom: 20),
      child: Text(
        mood,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
class UniqueColorGenerator {
  static Random random = new Random();
  static Color getColor() {
    return Color.fromARGB(
      255,
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );
  }
}