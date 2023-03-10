import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      color: Color.fromARGB(255, 255, 255, 255),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
      toolbarTextStyle: TextStyle(fontSize: 20, color: Colors.black)),
  // textTheme: GoogleFonts.openSansTextTheme(),
  // text Theme
  fontFamily: 'GmarketSansTTF',

  textTheme: const TextTheme(

      // bodyText1: TextStyle(color: Colors.teal, fontSize: 30),
      // // 속성 지정 안할 경우 기본 스타일
      // bodyText2: TextStyle(color: Colors.black87, fontSize: 20),
      // subtitle1: TextStyle(
      //     color: Colors.blue, fontSize: 50, fontWeight: FontWeight.bold),
      ),

  primaryColorDark: const Color(0xFF0097A7),
  primaryColorLight: const Color(0xFFB2EBF2),
  primaryColor: const Color(0xFF00BCD4),

  colorScheme: const ColorScheme.light(secondary: Color(0xFF009688)),
  scaffoldBackgroundColor: Color.fromARGB(255, 247, 249, 249),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
);
