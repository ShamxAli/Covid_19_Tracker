import 'package:covid_19_tracker/widgets/grid_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HealthScreen extends StatefulWidget {
  @override
  _HealthScreenState createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Precautions',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              GridImage(image: 'images/stayAtHome.jpg', msg: 'Stay At Home'),
              SizedBox(width: 40.0),
              GridImage(image: 'images/wearMask.jpg', msg: 'Weak Mask',)
            ],
          ),
          Row(
            children: [
              GridImage(image: 'images/washHands.jpg', msg: 'Wash Hands'),
              SizedBox(width: 40.0),
              GridImage(image: 'images/socialDistance.jpg', msg: 'Keep Social Distance',)
            ],
          ),
        ],
      ),
    );
  }
}
