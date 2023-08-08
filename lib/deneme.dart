import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'DilPaketi/dilKoduDondur.dart';
import 'DilPaketi/dilPackage.dart';
import 'Provider/allProvider.dart';
import 'Utils/renkler.dart';
import 'oyunController.dart';

class Deneme extends ConsumerStatefulWidget  {
  const Deneme({
    super.key,
  });
  @override
  DenemeState createState() => DenemeState();
}

class DenemeState extends ConsumerState  {
  List<List<String>> dropdownItems = [
    ['Danimarkalı', 'Norveçli', 'Alman', 'İsveçli', 'İngiliz'],
    ['Mavi', 'Yeşil', 'Siyah', 'Sarı', 'Kırmızı'],
    ['Kuş', 'Kedi', 'Köpek', 'At', 'Balık'],
    ['Çay', 'Su', 'Süt', 'Bira', 'Kahve'],
    ['Winfield', 'Marlboro', 'Dunhill', 'Pall Mall', 'Prince']
  ];

  List<String?> dropdownValues = List.filled(25, null);
  OyunController oyunController = OyunController();

  @override
  Widget build(BuildContext context) {
    return Container(
            color: Colors.black,
            height: globalBoy / 1.1,
            child: GridView.count(
              crossAxisCount: 5,
              childAspectRatio: 2.4,
              children: List.generate(25, (index) {
                return Container(
                  decoration: BoxDecoration(
                      color: colorList[index],
                      border: Border.all(
                        width: 0.5,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                    child: DropdownButton<String>(
                      icon: Expanded(child: Container()),
                      underline: Container(),
                      dropdownColor: Color.fromARGB(255, 63, 63, 63),
                      value: dropdownValues[index],
                      onChanged: (newValue) {
                        oyunController.dropDownButtonOnChanged(index, newValue,ref);
                        dropdownValues[index];
                        setState(() {
                          if (index > 4 && index < 10) {
                            oyunController.renkata(index,
                                dropdownItems[1].indexOf(newValue.toString()));
                          }

                          dropdownValues[index] = newValue!;
                        });
                      },
                      items: dropdownItems[(index / 5).toInt()]
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Container(
                              width: (globalEn / 5) - 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Text(
                                        index < 20
                                            ? translates(
                                                    dilKoduDondur(
                                                        globalvtDenGelenDilDegeri),
                                                    value)
                                                .toString()
                                            : value,
                                        style: UtilSplashText.splashFontDondur(
                                            globalYaziBoyutu /
                                                globalYaziAyari)),
                                  ),
                                ],
                              )),
                        );
                      }).toList(),
                    ),
                  ),
                );
              }),
            ),
          );
  }
}