import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UtilSplashRenkler {
  static const Color backColor = Color.fromARGB(255, 63, 63, 63);
  static const Color textColor = Colors.white;

  static const Color redColor = Color.fromARGB(255, 221, 122, 115);
  static const Color greenColor = Color.fromARGB(255, 52, 133, 55);
  static const Color blueColor = Color.fromARGB(255, 87, 157, 214);
  static const Color yellowColor = Color.fromARGB(255, 214, 202, 91);
}

enum MyDropdownColors { Mavi, Yesil, Siyah, Sari, Kirmizi }

class UtilSplashText {
  UtilSplashText(double d);

  static TextStyle splashFontDondur(double fontSize) {
    return GoogleFonts.josefinSans(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: UtilSplashRenkler.textColor);
  }
}

class PaddingUtility {}

class ReversePage {
  static void sayfaDegistir(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ));
  }
}
