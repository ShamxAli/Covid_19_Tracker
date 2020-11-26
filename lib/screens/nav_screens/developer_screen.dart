import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeveloperScreen extends StatefulWidget {
  @override
  _DeveloperScreenState createState() => _DeveloperScreenState();
}

class _DeveloperScreenState extends State<DeveloperScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70.0,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Shams Ali',
              style: TextStyle(fontSize: 26.0 , fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Android/Flutter Developer',
              style: TextStyle(fontSize: 20.0 , fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Email me at',
              style: TextStyle(fontSize: 20.0 , fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'shamsali0404@gmail.com',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
