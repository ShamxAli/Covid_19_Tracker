import 'package:flutter/material.dart';

class GridImage extends StatelessWidget {
  final image;
  final msg;

  GridImage({this.image, this.msg});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Image.asset(image),
          SizedBox(height: 5.0),
          Text(msg),
        ],
      ),
    );
  }
}
