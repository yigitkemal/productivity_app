import 'package:eight_app/customButton.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image(
                image: AssetImage('assets/images/firstPage.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
            /*Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "The progress is only within you.",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "The ore within\nis revealed.",
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      )),
                ],
              ),
            ),*/
            Container(
              margin: EdgeInsets.only(bottom: 120, left: 50, right: 50),
              child: Column(
                // 120 vertical bottom
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: CustomButton(buttonText: "Login", onPressed: () {
                      print("Merhaba buton tıklandı");
                    }),
                  ),
                  Center(
                    child: CustomButton(buttonText: "Sign Up", onPressed: (){},),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
