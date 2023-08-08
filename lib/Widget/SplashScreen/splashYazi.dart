import 'package:flutter/material.dart';
import '../../DilPaketi/dilKoduDondur.dart';
import '../../DilPaketi/splash.dart';
import '../../Provider/allProvider.dart';
import '../../Utils/renkler.dart';

class YaziKolonu extends StatelessWidget {
  final String txtAlbert = "Albert Einstein";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(splashDondur(dilKoduDondur(globalvtDenGelenDilDegeri)),
            style: UtilSplashText.splashFontDondur(
                globalYaziBoyutu / globalYaziAyari)),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.only(top: globalBoy / 20, right: globalEn / 10),
            child: Text(txtAlbert,
                style: UtilSplashText.splashFontDondur(
                    1.2 * globalYaziBoyutu / globalYaziAyari)),
          ),
        ),
      ],
    );
  }
}
