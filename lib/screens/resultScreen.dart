import 'package:ecomate/services/airdata.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final AirPollutionData data;

  const ResultScreen({this.data});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "Air Quality Index",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.lightBlueAccent,
                  ),
                ),SizedBox(height: 20,),
                Text(
                  "${data.airQualityIndex}",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: data.airQualityIndex < 200
                          ? Colors.lightGreenAccent
                          : Colors.red),
                ),
                SizedBox(
                  width: 100.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  "Condition",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    data.icon,
                    SizedBox(width: 20,),
                    Text(
                      data.condition,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.green),
                    ),

                  ],
                ),
                SizedBox(
                  height: 20.0,
                  width: 180.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  "Remark",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.redAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    data.remark,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            RaisedButton(onPressed: (){
              Navigator.pop(context);
            },
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text("Back"),
            ),)
          ],
          ),
        ),
      ),
    ));
  }
}
