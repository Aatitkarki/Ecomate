import 'package:flutter/material.dart';

class Facts extends StatefulWidget {
  @override
  _FactsState createState() => _FactsState();
}

class _FactsState extends State<Facts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Unknown Facts"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: listOfFacts.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(listOfFacts[index]),
                ),
              );
            }));
  }
}

List<String> listOfFacts = [
  "China is the world’s largest producer of carbon dioxide. The United States is number 2.",
  "Antarctica is the cleanest place on Earth protected by anti-pollution laws.",
  "A single car generates half a ton of CO2 and a NASA space shuttle releases 28 tons of C02.",
  "The UAE is one of the biggest waste producer and water consumer.",
  "More than 20,000 items of debris larger than a softball are currently orbit the Earth. ",
  "The garbage dumped in the ocean every year is roughly around 14 billion pounds. Plastic is the major constituent.",
  "Children contribute to only 10% of the world’s pollution but are prone to 40% of global disease.",
  "The amount of money invested in the nuclear test could be used to finance 8,000 hand pumps, giving villages across the third world access to clean water.",
  "A piece of space debris can reach speeds of 4.3 to 5 miles per second. That’s nearly 7 times faster than a bullet and just about the equivalent of being hit by a bowling ball moving at 300 miles per hour.",
  "More than 5,00,000 pieces of debris or space junk are tracked as they orbit the earth.",
  "Major oil spills like those in the Gulf of Mexico, is the worst type of pollution due to consistent oil spills in the water body which spreads everywhere else.",
  "Cadmium is a dangerous pollutant that kills foetus’ sex organ cells. It is widespread in many things that we eat and drink.",
  "A single person in the United States produces 2 kilograms of garbage every day.",
  "Public transportation and carpooling can help you to reduce air pollution and save money up to a great extent.",
  "Approximately 46% of the lakes in America are extremely polluted and hence risky for swimming, fishing, and aquatic life.",
  "Pollution kills more than 1 million seabirds and 100 million mammals every year.",
  "Pollution is one of the biggest killers, affecting more than 100 million worldwide.",
  "Children contribute to only 10% of the world’s pollution but are prone to 40% of global disease.",
  "Almost 80% of urban waste in India is dumped in the river Ganges",
  "There are more around 73 various kinds of pesticides in the groundwater, which is used as drinking water.",
];
