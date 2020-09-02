import 'package:ecomate/services/location.dart';
import 'package:ecomate/services/networking.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const airPollutionUrl = "http://api.airpollutionapi.com/1.0/aqi";
const String apikey = "esstgkdrqbg08ql42tsogf0gd0";

class AirPollutionData {
  String condition;
  String remark;
  int airQualityIndex;
  Icon icon;

  Future getCurrentLocationAirData() async {
    Location location = Location();
    await location.getCurrentPosition();
    NetworkHelper networkHelper = NetworkHelper(
        '$airPollutionUrl?lat=${location.latitude}&lon=${location.longitude}&APPID=$apikey');
    var airData = await networkHelper.getData();
    condition = airData["data"]["text"];
    print(condition);
    airQualityIndex = airData["data"]["value"];
    remark = airData["data"]["alert"];

    if (condition.toLowerCase() == "good" || condition.toLowerCase() == "satisfactory") {
      icon = Icon(FontAwesomeIcons.grinStars, size: 30.0, color: Colors.green[600],);
    } else if (condition.toLowerCase() == "moderate ") {
      icon = Icon(FontAwesomeIcons.grinAlt, size: 30.0, color: Colors.green[300],);
    } else if (condition.toLowerCase() == "poor") {
      icon = Icon(FontAwesomeIcons.sadTear, size: 30.0, color: Colors.yellow[800]);
    } else if (condition.toLowerCase() == "very poor") {
      icon = Icon(FontAwesomeIcons.sadCry, size: 30.0, color: Colors.yellow[900],);
    } else if (condition.toLowerCase() == "severe") {
      icon = Icon(FontAwesomeIcons.grimace, size: 30.0, color: Colors.red[500],);
    }
  }
}
