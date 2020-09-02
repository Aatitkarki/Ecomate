import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ContributePage extends StatefulWidget {
  @override
  _ContributePageState createState() => _ContributePageState();
}

class _ContributePageState extends State<ContributePage> {
  Random random = new Random();

  int getRandomValue() {
    int rand = random.nextInt(6);
    return rand;
  }

  List<String> challengeList = [
    "Follow the rules of Reuse, Recycle and Reduce",
    "Become sustainable by using alternatives",
    "Use the water to the need",
    "Prevent Forest Fires in your place",
    "Use bicycle for Travelling",
    "Save at least 3 litre of water daily",
    "Use public transportation"
  ];

  List<String> questions = [
    "What will you do in LockDown?",
    "Will you go out if the Air quality is too bad?",
    "Have you planted trees?"
  ];
  List<String> answers = [
    "Stay in Home",
    "No i wont go out",
    "Yes i have planted a lot"
  ];
  List<String> answers2 = [
    "I will go to work",
    "Yes i will go, i cant stay at home",
    "No i dont plant trees, other will do"
  ];
  int num = 0;

  void exitDialogBox() {
    Navigator.pop(context);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/earth.gif"),
              SizedBox(
                height: 50.0,
              ),
              Text(
                "Challenge Ahead >>>",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[500],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          questions[num],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red[400],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: GestureDetector(
                            onTap: () {
                              if (num < questions.length - 1) {
                                setState(() {
                                  num++;
                                });
                              } else {
                                Alert(
                                  context: context,
                                  type: AlertType.info,
                                  title: "Your Challenge",
                                  desc: challengeList[getRandomValue()],
                                  buttons: [
                                    DialogButton(
                                      child: Text(
                                        "I Will",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () {
                                        exitDialogBox();
                                      },
                                      color: Colors.lightGreen,
                                    ),
                                    DialogButton(
                                      child: Text(
                                        "I Won't",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () {
                                        exitDialogBox();
                                      },
                                      color: Colors.redAccent,
                                    )
                                  ],
                                ).show();
                              }
                            },
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  answers[num],
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red[400],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: GestureDetector(
                            onTap: () {
                              if (num < questions.length - 1) {
                                setState(() {
                                  num++;
                                });
                              } else {
                                Alert(
                                  closeFunction: () {
                                    Navigator.pop(context);
                                  },
                                  context: context,
                                  type: AlertType.info,
                                  title: "Your Challenge",
                                  desc: challengeList[getRandomValue()],
                                  buttons: [
                                    DialogButton(
                                      child: Text(
                                        "I Will",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () {
                                        exitDialogBox();
                                      },
                                      color: Colors.lightGreen,
                                    ),
                                    DialogButton(
                                      child: Text(
                                        "I Won't",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () {
                                        exitDialogBox();
                                      },
                                      color: Colors.redAccent,
                                    )
                                  ],
                                ).show();
                              }
                            },
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  answers2[num],
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
