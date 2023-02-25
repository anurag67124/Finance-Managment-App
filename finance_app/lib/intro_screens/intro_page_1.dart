import 'package:flutter/material.dart';
import 'package:finance_app/theme.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 154, 205, 247),
            Color.fromARGB(255, 255, 164, 194)
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Center(
        child: Image(
          image: NetworkImage('http://i.postimg.cc/SKXY714f/page3.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
