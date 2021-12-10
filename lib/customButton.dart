import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 120),
      child: ElevatedButton(onPressed: (){},
        child: Text(
          "Login",
          style: TextStyle(
              color: Colors.white,
              fontSize: 22
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