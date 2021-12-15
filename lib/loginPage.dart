import 'package:eight_app/Auth.dart';
import 'package:eight_app/CustomIcons.dart';
import 'package:eight_app/customButton.dart';
import 'package:eight_app/customIconButton.dart';
import 'package:eight_app/customTextField.dart';
import 'package:eight_app/home.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var mailString;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String buttonText = "Sign In";

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
            //App Logo
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
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Sign In Text
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        // TextField Email
                        CustomTextField(
                          hintText: "Username or Email...",
                          textFieldType: false,
                          textFieldController: emailController,
                        ),
                        // TextField Password
                        CustomTextField(
                          hintText: "Password...",
                          textFieldType: true,
                          textFieldController: passwordController,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        // Sign In Button
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF0E0717),
                                    Color(0xFF020930)
                                  ],
                                )),
                            child: ElevatedButton(
                              onPressed: () {
                                // Here is the sign in
                                AuthenticationHelper()
                                    .singIn(email: emailController.text.trim(), password: passwordController.text.trim())
                                    .then((value){
                                   if(value==null){
                                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
                                   }else{
                                     Scaffold.of(context).showSnackBar(SnackBar(
                                       content: Text(
                                         value,
                                         style: TextStyle(fontSize: 16),
                                       ),
                                     ));
                                   }
                                });
                              },
                              child: Text(
                                buttonText,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                        ),
                        // Forgot yout password button
                        Container(
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w200),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                          ),
                        ),
                        // Sign In with social
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Text(
                            "Or Countinue With;",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           CustomIconButton(comingIcon: CustomIcon.google, onPressed: (){}),
                           CustomIconButton(comingIcon: CustomIcon.apple_1, onPressed: (){}),
                          ],
                        )
                      ],
                    ),
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
