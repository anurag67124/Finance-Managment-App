import 'package:flutter/material.dart';
import 'package:finance_app/theme.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 180, 177, 177),
            Color.fromARGB(255, 203, 148, 128)
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Center(
        child: Image(
          image: NetworkImage(
              'https://i.postimg.cc/rwFX0vTz/Screenshot-2023-02-12-at-1-20-57-PM.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
