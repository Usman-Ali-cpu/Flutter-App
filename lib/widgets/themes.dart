import 'package:flutter/material.dart';

class ThemeApp {
  static ThemeData get themeslight => ThemeData(
        primarySwatch: Colors.cyan,
        appBarTheme: AppBarTheme(
          color: Colors.white12,
          elevation: 0.0,
          centerTitle: true,
        ),
      );

  static ThemeData get themesdark => ThemeData(
        brightness: Brightness.dark,
      );
}
