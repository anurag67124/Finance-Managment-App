import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: Center(
        child: Image(
          image: NetworkImage('http://i.postimg.cc/SKXY714f/page3.png'),
          fit: BoxFit.cover,
      ),
      ),
      
    );
  }
}