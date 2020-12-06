import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeveloperScreen extends StatefulWidget {
  @override
  _DeveloperScreenState createState() => _DeveloperScreenState();
}

class _DeveloperScreenState extends State<DeveloperScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          CircleAvatar(
            maxRadius: height * 0.102,
            backgroundColor: Colors.blue,
            child: CircleAvatar(
              maxRadius: height * 0.10,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Text("Shams Ali",
              style: TextStyle(
                  fontSize: height * 0.03,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "Android/Flutter Developer",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: height * 0.022),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Text(
              "Email Me",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: height * 0.02),
            ),
            Text("shamsali0404@gmail.com",
                style: TextStyle(fontSize: height * 0.02)),
          ]),
        ],
      ),
    );


    // return Container(
    //   child: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         CircleAvatar(
    //           radius: 70.0,
    //           backgroundColor: Colors.grey,
    //           backgroundImage: AssetImage('images/profile.jpg'),
    //         ),
    //         SizedBox(
    //           height: 10.0,
    //         ),
    //         Text(
    //           'Shams Ali',
    //           style: TextStyle(fontSize: 26.0 , fontWeight: FontWeight.w600),
    //         ),
    //         SizedBox(
    //           height: 10.0,
    //         ),
    //         Text(
    //           'Android/Flutter Developer',
    //           style: TextStyle(fontSize: 20.0 , fontWeight: FontWeight.w500),
    //         ),
    //         SizedBox(
    //           height: 10.0,
    //         ),
    //         Text(
    //           'Email me at',
    //           style: TextStyle(fontSize: 20.0 , fontWeight: FontWeight.w500),
    //         ),
    //         SizedBox(
    //           height: 5.0,
    //         ),
    //         Text(
    //           'shamsali0404@gmail.com',
    //           style: TextStyle(fontSize: 16.0),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
