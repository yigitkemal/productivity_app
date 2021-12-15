import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText, required this.textFieldType,required this.textFieldController
  }) : super(key: key);

  final String hintText;
  final bool textFieldType;
  final TextEditingController textFieldController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        controller: textFieldController,
        obscureText: textFieldType,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 15),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.5),
            ),
            border: InputBorder.none),
      ),
    );
  }
}
