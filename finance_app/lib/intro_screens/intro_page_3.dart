import 'package:flutter/material.dart';
import 'package:finance_app/theme.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 249, 206, 141),
            Color.fromARGB(255, 244, 180, 158)
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Center(
        child: Image(
          image: NetworkImage(
              'https://i.postimg.cc/mrNGBkPt/Screenshot-2023-02-12-at-1-34-42-PM.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
