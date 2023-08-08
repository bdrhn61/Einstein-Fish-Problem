import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/Utils/renkler.dart';
import 'Provider/allProvider.dart';

List<Color?> colorList = List.filled(25, UtilSplashRenkler.backColor);

class OyunController {
  double birDogruIcinUzunluk= globalEn/1.3/25;
  List<String?> dogrulukKontrolu = List.filled(25, null);
  List<String?> kontrol = [
    "Norveçli",
    "Danimarkalı",
    "İngiliz",
    "Alman",
    "İsveçli",
    "Sarı",
    "Mavi",
    "Kırmızı",
    "Yeşil",
    "Siyah",
    "Kedi",
    "At",
    "Kuş",
    "Balık",
    "Köpek",
    "Su",
    "Çay",
    "Süt",
    "Kahve",
    "Bira",
    "Dunhill",
    "Marlboro",
    "Pall Mall",
    "Prince",
    "Winfield"
  ];

  List<Color?> renkata(
      int index,int secilenItemIndex) {
    Color renk = UtilSplashRenkler.redColor;
     if (secilenItemIndex ==  MyDropdownColors.Mavi.index) {
      renk = UtilSplashRenkler.blueColor;
    } else if (secilenItemIndex == MyDropdownColors.Yesil.index) {
      renk = UtilSplashRenkler.greenColor;
    } else if (secilenItemIndex == MyDropdownColors.Siyah.index) {
      renk = UtilSplashRenkler.backColor;
    } else if (secilenItemIndex == MyDropdownColors.Sari.index) {
      renk = UtilSplashRenkler.yellowColor;
    } else if (secilenItemIndex == MyDropdownColors.Kirmizi.index) {
      renk = UtilSplashRenkler.redColor;
    }

    colorList[index - 5] = renk;
    colorList[index] = renk;
    colorList[index + 5] = renk;
    colorList[index + 10] = renk;
    colorList[index + 15] = renk;
    return colorList;
  }

  dropDownButtonOnChanged(int index, String? newValue,WidgetRef ref) {
    dogrulukKontrolu[index] = newValue.toString();
    int sayac = 0;
    for (int i = 0; i < 25; i++) {
      if (kontrol[i] == dogrulukKontrolu[i])
        sayac++;
      else {
        print(kontrol[i].toString() + "  " + dogrulukKontrolu[i].toString());
      }
    }
    
    ref.read(sayacStateProvider.notifier).state =  sayac.toDouble()*birDogruIcinUzunluk;
    if (sayac == 25) {
      controllerCenter.play();
    }
  }
}
