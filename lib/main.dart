import 'dart:io';

import 'package:atapp/screens/homeScreen.dart';
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
    return Platform.isIOS
        ? SafeArea(
            child: MaterialApp(
              color: accentColor,
              theme: ThemeData(
                  appBarTheme: const AppBarTheme(
                      backgroundColor: MainApp.primaryColor,
                      shadowColor: Colors.black26,
                      foregroundColor: accentColor)),
              debugShowCheckedModeBanner: false,
              home: Directionality(
                  textDirection: TextDirection.rtl, child: HomePage()),
            ),
          )
        : MaterialApp(
            color: accentColor,
            theme: ThemeData(
                appBarTheme: const AppBarTheme(
                    backgroundColor: MainApp.primaryColor,
                    shadowColor: Colors.black26,
                    foregroundColor: accentColor)),
            debugShowCheckedModeBanner: false,
            home: Directionality(
                textDirection: TextDirection.rtl, child: HomePage()));
  }
}
