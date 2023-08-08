import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/Provider/allProvider.dart';
import 'package:test/widget/splashScreen/splashScreen.dart';

import '../../Utils/renkler.dart';

class DilContainer {
  static dilContainer(String data, BuildContext context) {
    return InkWell(
      onTap: () async {
        _dilSecVeGit(context, data);
      },
      child: Padding(
        padding: EdgeInsets.all(globalBoy / 100),
        child: Container(
            width: globalEn / 3,
            height: globalBoy / 8,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1.1,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
                child: Text(data,
                    style: UtilSplashText.splashFontDondur(
                        globalYaziBoyutu / globalYaziAyari)))),
      ),
    );
  }

  static _dilSecVeGit(BuildContext context, String data) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('dil', data);
    globalvtDenGelenDilDegeri = data;
    ReversePage.sayfaDegistir(context, const SplashScreen());
  }
}
