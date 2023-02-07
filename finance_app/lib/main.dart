import 'package:flutter/material.dart';
import 'package:finance_app/Screens/home.dart';
import 'package:finance_app/Screens/statistics.dart';
import 'package:finance_app/widgets/bottomnavigationbar.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'data/model/add_date.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // ignore: non_constant_identifier_names
  static Color my_color = const Color.fromARGB(255, 128, 4, 150);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Bottom(),
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          buttonTheme: ButtonThemeData(buttonColor: my_color)),
    );
  }
}
