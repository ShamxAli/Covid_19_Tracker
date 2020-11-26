import 'package:covid_19_tracker/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        image: Image.asset(
          'images/background.png',
          width: 100.0,
          height: 100.0,
        ),
        photoSize: 120.0,
        seconds: 4,
        loaderColor: Colors.blueGrey,
        loadingText: Text('Stay Home, Stay Safe!'),
        navigateAfterSeconds: HomeScreen(),
      ),
    );
  }
}
