import 'package:flutter/material.dart';
import 'package:news_app/homepage_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(new Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MyHomePage(title: "World News")));
    });
    return Scaffold(
      body: Column(children: [
        Container(
          height: 200,
        ),
        Image.asset('assets/icon/icon.png'),
        Container(
          height: 10,
        ),
        CircularProgressIndicator(),
      ]),
    );
  }
}
