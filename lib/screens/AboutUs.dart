import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Text("ASTROCODERS",style: TextStyle(fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold),),
                SizedBox(height: 40,),
                UserCard(name: "Suresh Karki",description: "I am Suresh Karki from Gaighat, Nepal. I am pursuing my Bachelor’s degree from Itahari International College. Talking about my interests, I have a great interest in application design and development along with the data handling.",),
                UserCard(name: "Sachin Dahal",description:"I am Sachin Dahal from Itahari, Nepal. Currently, I’m studying BSc. Computing, at Itahari International College. I’m intensely passionate about programming, app development activities, and designing sections. Also very pleased to exchange creative ideas among others." ,),
                UserCard(name: "Aradhya Gopal Nepal",description:"A student of Computing in Itahari International College with a keen interest in the Android Development, Hi I’m Aaradhya Gopal Nepal from Biratnagar, Nepal. I wanted to explore more about programming and android development." ,),
                UserCard(name: "Sumit Sah",description: "My name is Sumit Kumar Sah. I am a Grade 10 student at Gautam Secondary school. I have a high enthusiasm and craze for astronomy and space travel. I have a bunch of great ideas and working for making Space Travel Affordable for all human beings.",),
                UserCard(name: "Dipsha Budhathoki",description: "Hey I am dipsha. I am a 9th grader and I am currently living in kathmandu , Nepal. I have a deep interest in Astronomy, Story Telling.",),
                UserCard(name: "Chan Yun Hong",description: "I am Chan Yun Hong from Malaysia. I'm studying Bachelor of Computer at Multimedia University Cyberjaya Campus. I am a data-driven decision maker and love to get updated with latest technology. Interested in analyzing data for finding insights and open for peer opinion",),

              ],
            ),
        )
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final name;
  final description;

  const UserCard({ this.name, this.description});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text(name,style: TextStyle(fontSize: 25,color: Colors.blue),),
          Text(description)
        ],
      ),
    );
  }
}