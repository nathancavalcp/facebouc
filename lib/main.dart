import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Facebouc', home: BasicPage());
  }
}

// ignore: use_key_in_widget_constructors
class BasicPage extends StatelessWidget {

  // Méthode permettant d'afficher l'avatar
  CircleAvatar buildCircleAvatar(double radius) {

      return CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage("images/profile.jpg"),
      ); 

  }

  Widget sectionTitleText(String text) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile Facebouc",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image(
                  image: AssetImage("images/cover.jpg"),
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 130),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.white,
                    child: buildCircleAvatar(69),
                  ),
                ),
              ],
            ),
            Text(
              "Pierre Quiroule",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
            ),
            Text(
              "N'amasse pas mousse",
              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
            ),
            Divider(
              thickness: 2,
            ),
            sectionTitleText("À propos de moi"),
          ],
        ),
      ),
    );
  }
}
