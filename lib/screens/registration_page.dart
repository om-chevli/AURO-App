import 'package:flutter/material.dart';
import '../widgets/form_fields.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
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
                SizedBox(height: 40),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Registration',
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 36,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 30),
                Form(
                  child: Column(
                    children: <Widget>[
                      FormFields(
                        text: 'Name',
                        kType: TextInputType.name,
                        textController: null,
                        validate: null,
                      ),
                      FormFields(
                        text: 'Email',
                        kType: TextInputType.emailAddress,
                        textController: null,
                        validate: null,
                      ),
                      FormFields(
                        text: 'Password',
                        isPassword: true,
                        textController: null,
                        validate: null,
                      ),
                      FormFields(
                        text: 'Confirm Password',
                        isPassword: true,
                        textController: null,
                        validate: null,
                      ),
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
                          'REGISTER',
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
                FlatButton(
                  onPressed: null,
                  child: Text('Forgot Password?',style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
