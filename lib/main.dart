import 'package:flutter/material.dart';
import 'package:medium_work/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}


class AppColor {
  static final List<Color> gradient = [
    primary2,
    primary1,
  ];
  static const kColorPrimary = Color(0xffEDEEF9);
  static const kColorPrimary2 = Color(0xFfA174DB);
  static const kColorPrimary3 = Color(0xFFE7D5FE);
  static const bgColor = Color.fromRGBO(231, 247, 234, 1);

  static const primary2 = Color.fromARGB(255, 22, 117, 161);
  static const primary1 = Color.fromARGB(255, 29, 211, 138);
  static const Color secondary = Color(0xff14171A);
  static const Color lightGrey = Color(0xffAAB8C2);
  static const Color extraLightGrey = Color(0xffE1E8ED);
  static const Color white = Color(0xFFffffff);
}

