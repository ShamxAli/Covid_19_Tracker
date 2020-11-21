import 'package:flutter/material.dart';

class GlobalScreen extends StatefulWidget {
  @override
  _GlobalScreenState createState() => _GlobalScreenState();
}

class _GlobalScreenState extends State<GlobalScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Global'),
      ),
    );
  }
}
