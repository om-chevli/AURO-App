import 'package:flutter/material.dart';

class RegistrationSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Congratulations!',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'You are successfuly Registered. You can now start using this wonderful app!',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 27),
                  Text(
                    'See You on the other side! 👋',
                  ),
                  SizedBox(height: 70),
                  Container(
                        width: double.infinity,
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
                          vertical: 16,
                        ),
                        child: Text(
                          'LOGIN NOW!',
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
