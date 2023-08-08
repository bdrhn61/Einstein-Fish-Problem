import 'package:flutter/material.dart';
import 'package:test/DilPaketi/ipucular.dart';
import 'package:test/Utils/renkler.dart';
import 'package:test/Provider/allProvider.dart';

soruWidget( dil, context) {
  return Stack(
    children: [
      SingleChildScrollView(
        child: Container(
          width: globalEn,
          color: UtilSplashRenkler.backColor,
          child: Container(
              padding: EdgeInsets.only(top: globalBoy / 15),
              child: Column(
                children: [
                  for (int i = 0; i < 15; i++)
                    Container(
                        padding: EdgeInsets.only(top: 10),
                        width: globalEn,
                        child: Center(
                          child: Text(ipucuDondur(dil)[i],
                              style: UtilSplashText.splashFontDondur(
                                  1.2 * globalYaziBoyutu / globalYaziAyari)),
                        )),
                ],
              )),
        ),
      ),
    ],
  );
}
