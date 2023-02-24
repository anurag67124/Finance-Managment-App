import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[100],
      child: Center(
        child: Image(
          image: NetworkImage('https://i.postimg.cc/rwFX0vTz/Screenshot-2023-02-12-at-1-20-57-PM.png'),
          fit: BoxFit.cover,
      ),
        ),
    );
  }
}