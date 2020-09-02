import 'package:ecomate/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF21315A),
          canvasColor: Colors.blueGrey),
      title: "Ecomate",
      home: Ecomate(),
    );
  }
}

class Ecomate extends StatefulWidget {
  @override
  _EcomateState createState() => _EcomateState();
}

class _EcomateState extends State<Ecomate> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: SafeArea(child: HomePage()),
      image: new Image.asset(
        "images/app-icon.png",
      ),
      photoSize: 50.0,
      title: Text(
        "ECOMATE",
        style: new TextStyle(
          fontFamily: "Pacifico",
          fontSize: 30.0,
          color: Color(0xFFEAD150),
        ),
      ),
      backgroundColor: Color(0xFF45543F),
      loaderColor: Colors.lightGreenAccent,
      loadingText: Text(
        "A small contribution towards\n  economy and environment.",
        style: TextStyle(
          fontSize: 15.0,
          fontFamily: "Roboto",
          color: Color(0xFFCAFD78),
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
