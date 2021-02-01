import 'package:flutter/material.dart';

class MentalResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                Text(
                  'root > node > final',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'How Acceptance Clears The Way For Desired Freedom',
                  style: TextStyle(
                    fontFamily: 'AbrilFatface',
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 12),
                Image(
                  image: AssetImage('assets/images/mental_image.png'),
                  height: 300,
                  // width: 250,
                ),
                SingleChildScrollView(
                  child: Text(
                    'Freedom does not mean we have to change all our situations. We do not have to turn our life or situations upside down to become free because one situation is not better than some other situation; don’t ever believe that. It is just a choice.',
                    style: TextStyle(
                      fontFamily: 'Alata',
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.left,
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
