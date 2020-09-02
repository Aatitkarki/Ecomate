import 'package:flutter/material.dart';
import 'mainScreen1.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.asset("images/earth.gif"),
            ),
            Center(
              child: Text(
                "WELCOME",
                style: new TextStyle(
                  fontFamily: "Pacifico",
                  fontSize: 25.0,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "'EXPLORE' a new era of learning about Air Density, Water Density and also about other Explorations that are near to you.",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Roboto",
                    color: Color(0xFFCAFD78),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(),
                  ),);
              },
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Next",
                style: new TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 22.0,
                  color: Colors.lightGreenAccent[100],
                ),
              ),
              color: Colors.lightBlue,
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
