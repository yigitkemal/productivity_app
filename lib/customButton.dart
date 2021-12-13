import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonText, required this.onPressed,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16
          ),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.white.withOpacity(0.2),
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            )
        ),
      ),
    );
  }
}
