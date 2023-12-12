import 'package:atapp/screens/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  static const Color primaryColor = Color.fromRGBO(241, 255, 255, 1);
  static const Color accentColor = Color.fromRGBO(77, 125, 117, 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(textDirection: TextDirection.rtl, child: HomePage()),
    );
  }
}
