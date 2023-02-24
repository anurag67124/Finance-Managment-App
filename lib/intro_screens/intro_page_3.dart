import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: Center(
        child: Image(
          image: NetworkImage('https://i.postimg.cc/mrNGBkPt/Screenshot-2023-02-12-at-1-34-42-PM.png'),
          fit: BoxFit.fitHeight,
      ),
        ),
    );
  }
}