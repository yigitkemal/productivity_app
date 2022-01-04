import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              margin: EdgeInsets.only(top: 100,left: 30),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Welcome your eight,", style: TextStyle(fontSize: 12,color: Colors.white),),
                            Text("John",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                          ],
                        ),

                      ],
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
