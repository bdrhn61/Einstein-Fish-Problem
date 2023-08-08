import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/Reklam/advert-service.dart';
import 'package:test/widget/AnaEkran/ipucu.dart';
import 'package:test/widget/AnaEkran/anaEkranIpucuVeSoru.dart';
import 'package:test/widget/AnaEkran/konfeti.dart';

import 'Provider/allProvider.dart';
import 'deneme.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends ConsumerState {
  late AdvertService advertService;


  late int reklamSayaci;
  @override
  void initState() {
    super.initState();
    advertService = AdvertService();
    advertService.createInterstitialAd();
    //createInterstitialAd();
    reklamSayaci = 0;
  }

  @override
  Widget build(BuildContext context) {
    reklamSayaci = reklamSayaci + 1;
    if (reklamSayaci % 25 == 0) {
      advertService.showInterstitialAd();
      // _showInterstitialAd();
    }
    print('build ssss');
    return Scaffold(
      floatingActionButton: Padding(
          padding: EdgeInsets.only(left: globalEn / 16.5),
          child: const AnaEkranIpucuVeSoru()),
      backgroundColor: Colors.black,
      body: const Stack(
        children: [
          Deneme(),
          Konfeti(),
          Ipucu(),
        ],
      ),
    );
  }
}
