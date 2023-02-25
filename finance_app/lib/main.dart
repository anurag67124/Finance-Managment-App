
import 'package:finance_app/Screens/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:finance_app/Screens/add.dart';
import 'package:finance_app/Screens/edit_profile.dart';
import 'package:finance_app/Screens/profile.dart';
import 'package:finance_app/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/Screens/home.dart';
import 'package:finance_app/Screens/settings.dart';
import 'package:finance_app/Screens/statistics.dart';
import 'package:finance_app/widgets/bottomnavigationbar.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:finance_app/screens/login.dart';
import 'data/model/add_date.dart';
import 'onboarding_screen.dart';
import 'package:finance_app/theme.dart';
//comment

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static Color my_color = kSecondaryColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

   
      home: OnBoardingScreen(),
      theme: ThemeData(
          primaryColor: kPrimaryColor,

          buttonTheme: ButtonThemeData(buttonColor: my_color)),
    );
  }
}
