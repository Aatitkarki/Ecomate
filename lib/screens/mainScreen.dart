import 'package:ecomate/screens/AboutUs.dart';
import 'package:ecomate/screens/contributionScreen.dart';
import 'package:ecomate/screens/doYouKnow.dart';
import 'package:ecomate/screens/resultScreen.dart';
import 'package:ecomate/screens/sitelist.dart';
import 'package:ecomate/services/airdata.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  AirPollutionData airPollutionData = new AirPollutionData();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              new Container(
                  decoration: BoxDecoration(color: Color(0x000000)),
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: new Image.asset('images/app-icon.png'),
                  )),
              Positioned(
                bottom: 0,
                child: Text(
                  "ECOMATE",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: new Icon(
              Icons.data_usage,
              color: Colors.orange,
            ),
            title: new Text(
              "Air Data",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () async {
              Navigator.pop(context);
              setState(() {
                isLoading = true;
              });
              await airPollutionData.getCurrentLocationAirData();
              setState(() {
                isLoading = false;
              });
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultScreen(
                            data: airPollutionData,
                          )));
            },
          ),
          ListTile(
            leading: new Icon(
              Icons.help_outline,
              color: Colors.orange,
            ),
            title: new Text(
              "Do You Know",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Facts()));
            },
          ),
          ListTile(
            leading: new Icon(
              Icons.assignment_returned,
              color: Colors.orange,
            ),
            title: new Text(
              "Let's Contribute",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContributePage()));
            },
          ),
          ListTile(
            leading: new Icon(
              Icons.assistant_photo,
              color: Colors.orange,
            ),
            title: new Text(
              "Explore EarthData",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SiteList()));
            },
          ),
          ListTile(
            leading: new Icon(
              Icons.people,
              color: Colors.orange,
            ),
            title: new Text(
              "About US",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutUs()));
            },
          ),
          SizedBox(height: 70.0,),
          Center(child: Text("All Rights Reserved. ASTROCODERS")),
        ],  
      )),
      body: SafeArea(
          child: Material(
        color: Color(0xFF21315A),
        child: Stack(
          children: <Widget>[
            isLoading
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircularProgressIndicator(),
                      ],
                    ),
                  )
                : Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          DataBlock(
                            image: Image.asset("images/air-data.png",
                                fit: BoxFit.fill),
                            text: "AIR DATA",
                            size: 32.0,
                            opacityColor: Colors.black.withOpacity(0.28),
                            onPress: () async {
                              setState(() {
                                isLoading = true;
                              });
                              await airPollutionData
                                  .getCurrentLocationAirData();
                              setState(() {
                                isLoading = false;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ResultScreen(
                                            data: airPollutionData,
                                          )));
                            },
                          ),
                          DataBlock(
                            image: Image.asset("images/did-you-know.jpg",
                                fit: BoxFit.fill),
                            text: "DO YOU KNOW?",
                            size: 30.0,
                            opacityColor: Colors.black.withOpacity(0.48),
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Facts()));
                            },
                          ),
                          DataBlock(
                            image: Image.asset("images/lets-contribute.jpg",
                                fit: BoxFit.fill),
                            text: "LET\'S CONTRIBUTE!!!",
                            size: 28.0,
                            opacityColor: Colors.black.withOpacity(0.48),
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ContributePage()));
                            },
                          ),
                          DataBlock(
                            image: Image.asset("images/explore-yourself.jpg",
                                fit: BoxFit.fill),
                            text: "",
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SiteList()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      )),
    );
  }
}

class DataBlock extends StatelessWidget {
  final Image image;
  final String text;
  final Color opacityColor;
  final Function onPress;
  final double size;

  DataBlock(
      {this.image, this.text, this.opacityColor, this.onPress, this.size});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GestureDetector(
          onTap: onPress,
          child: Stack(
            children: <Widget>[
              Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                child: image,
              ),
              Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                color: opacityColor,
              ),
              Container(
                height: 200.0,
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: size,
                      color: Colors.yellowAccent[100],
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
