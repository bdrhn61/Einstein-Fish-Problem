import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/Widget/DilSecimi/dilSec.dart';

import 'Provider/allProvider.dart';
import 'Widget/SplashScreen/splashScreen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  globalvtDenGelenDilDegeri = prefs.getString('dil') ?? '';

  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(const ProviderScope(child: MyApp()));
  });
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    globalEn = MediaQuery.of(context).size.width;
    globalBoy = MediaQuery.of(context).size.height;
    globalYaziAyari = MediaQuery.textScaleFactorOf(context);
    globalYaziBoyutu = globalEn * 0.027;
    return MaterialApp(
        title: "Einstein's IQ Test",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
          highlightColor: Colors.red,
          primaryColor: Colors.black,
        ),
        home:  
         globalvtDenGelenDilDegeri == ''
            ? const DilSec()
            : const SplashScreen());
            
  }
}
