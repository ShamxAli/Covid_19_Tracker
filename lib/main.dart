import 'file:///D:/00-Flutter_Codebase/covid_19_tracker/lib/screens/home/home_screen.dart';
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
          'images/loader.png',
          width: 150.0,
          height: 150.0,
          color: Colors.blue,
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
