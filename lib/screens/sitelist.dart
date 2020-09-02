import 'package:ecomate/screens/webview.dart';
import 'package:flutter/material.dart';
import 'mainScreen.dart';

class SiteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
            body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                DataBlock(
                    image: Image.asset(
                      "images/webImages/world-view.jpg",
                      fit: BoxFit.fill,
                    ),
                    text: "WORLDVIEW",
                    size: 25.0,
                    opacityColor: Colors.black.withOpacity(0.2),onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>WebView(url:"https://worldview.earthdata.nasa.gov/?v=30.504253390791717,1.8398966548140052,126.55112839079172,48.035209154814005&l=Reference_Labels,Reference_Features,Coastlines,VIIRS_SNPP_CorrectedReflectance_TrueColor,MODIS_Aqua_CorrectedReflectance_TrueColor,MODIS_Terra_CorrectedReflectance_TrueColor", title:"WorldView")));
                    },),


                DataBlock(
                    image: Image.asset(
                      "images/no2Level.png",
                      fit: BoxFit.fill,
                    ),
                    text: "NO2 LEVEL",
                    size: 25.0,
                    opacityColor: Colors.black.withOpacity(0.4),onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>WebView(url:"https://maps.s5p-pal.com/", title:"ESA Resources")));
                    },),

                DataBlock(
                    image: Image.asset(
                      "images/webImages/iss.jpg",
                      fit: BoxFit.fill,
                    ),
                    text: "ISS",
                    size: 25.0,
                    opacityColor: Colors.black.withOpacity(0.2),onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>WebView(url:"https://www.nasa.gov/mission_pages/station/main/index.html", title:"ISS")));
                    },),
                DataBlock(
                    image: Image.asset(
                      "images/webImages/iss-live.jpg",
                      fit: BoxFit.fill,
                    ),
                    text: "ISS LIVE",
                    size: 25.0,
                    opacityColor: Colors.black.withOpacity(0.2),onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>WebView(url:"https://www.youtube.com/watch?v=EEIk7gwjgIM", title:"ISS LIVE")));
                    },),

                DataBlock(
                    image: Image.asset(
                      "images/webImages/nasa-tv.jpg",
                      fit: BoxFit.fill,
                    ),
                    text: "NASA \n  TV                                            ",
                    size: 20.0,
                    opacityColor: Colors.black.withOpacity(0.15),onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>WebView(url:"https://www.nasa.gov/multimedia/nasatv/index.html#public", title:"NASA TV")));
                    },),

                DataBlock(
                    image: Image.asset(
                      "images/air-pollution.jpg",
                      fit: BoxFit.fill,
                    ),
                    text: "AIR POLLUTION",
                    size: 25.0,
                    opacityColor: Colors.black.withOpacity(0.40),onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>WebView(url:"https://iasi.aeris-data.fr/covid-19/", title:"CNES Resources")));
                    },),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
