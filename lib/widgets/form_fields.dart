import 'package:flutter/material.dart';

class FormFields extends StatelessWidget {
  final bool isPassword;
  final String text;
  final TextInputType kType;
  final TextEditingController textController;
  final Function(String) validate;

  FormFields({
    this.text,
    this.kType,
    this.textController,
    this.validate,
    this.isPassword=false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          style: BorderStyle.solid,
          width: 2,
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 18,
      ),
      margin: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        obscureText: isPassword,
        autocorrect: false,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
