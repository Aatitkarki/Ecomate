import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Color(0xFF21315A),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                DataBlock(image: Image.asset("images/air-data.png", fit: BoxFit.fill), text: "AIR DATA", opacityColor: Colors.black.withOpacity(0.28),),
                DataBlock(image: Image.asset("images/water-data.jpg", fit: BoxFit.fill), text: "WATER DATA", opacityColor: Colors.black.withOpacity(0.28),),
                DataBlock(image: Image.asset("images/any-data.jpg", fit: BoxFit.fill), text: "ANY DATA", opacityColor: Colors.black.withOpacity(0.28),),
                DataBlock(image: Image.asset("images/explore-yourself.jpg", fit: BoxFit.fill), text: ""),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


class DataBlock extends StatelessWidget {
  final Image image;
  final String text;
  final Color opacityColor;

  DataBlock({this.image, this.text, this.opacityColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Stack(
          children: <Widget>[
            Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              child: image,
            ),

            Container(height: 200.0,
              width: MediaQuery.of(context).size.width, color: opacityColor,),

            Container(
              height: 200.0,
              child: Center(
                child: Text(text, style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.yellowAccent[100],
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.5,
                  fontFamily: "Roboto",
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}