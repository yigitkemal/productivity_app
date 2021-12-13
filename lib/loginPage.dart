import 'package:eight_app/customTextField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var mailString;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image(
              image: AssetImage('assets/images/login_bg.jpg'),
              fit: BoxFit.fitHeight,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 75,
              margin: EdgeInsets.only(top: 100),
              alignment: Alignment.topCenter,
              child: Image.asset('assets/images/eight.png'),
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.4),
                        Colors.white.withOpacity(0.2),
                      ],
                    ),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(horizontal: 35),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextField(hintText: "Username or Email...",),
                      CustomTextField(hintText: "Password...",),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
