import 'package:flutter/material.dart';
import 'package:test/widget/SplashScreen/splashYazi.dart';
import '../../Utils/renkler.dart';
import '../../anaEkran.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      ReversePage.sayfaDegistir(context, const MyHomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UtilSplashRenkler.backColor,
      body: Center(
        child: YaziKolonu(),
      ),
    );
  }
}
