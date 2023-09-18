import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../DilPaketi/dilKoduDondur.dart';
import '../../../DilPaketi/soru.dart';
import '../../../Utils/renkler.dart';
import '../../../Provider/allProvider.dart';

class AnaEkranIpucuVeSoru extends ConsumerWidget {
  const AnaEkranIpucuVeSoru({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sayac = ref.watch(sayacStateProvider);
    var gosterilsinMi = ref.watch(gosterilsinMiStateProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: globalBoy / 9.2,
          child: GestureDetector(
            child: ipucuSoruIcon('assets/images/request.png'),
            onTap: () {
              

              snack(context);
            },
          ),
        ),
        Opacity(
          opacity: gosterilsinMi,
          child: Stack(children: [
            Container(
                width: globalEn / 1.3,
                height: globalBoy / 50,
                color: UtilSplashRenkler.backColor),
            AnimatedSize(
              duration: const Duration(seconds: 1),
              //curve: Curves.bounceInOut,
              child: Container(
                width: sayac,
                height: globalBoy / 50,
                color: UtilSplashRenkler.greenColor,
              ),
            ),
          ]),
        ),
        Container(
          height: globalBoy / 8,
          child: GestureDetector(
            child: ipucuSoruIcon('assets/images/information.png'),
            onTapDown: (details) {
              ipucuGoster(ref);
              ref.read(gosterilsinMiStateProvider.notifier).state = 0;
            },
            onTapUp: (details) {
              ipucuKaybet(ref);
              ref.read(gosterilsinMiStateProvider.notifier).state = 1;
            },
          ),
        ),
      ],
    );
  }

  void snack(context) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    scaffoldMessenger.showSnackBar(SnackBar(
      duration: const Duration(seconds: 10),
      content: Column(
        children: [
          for (int i = 0; i < 5; i++)
            Text(soruDondur(dilKoduDondur(globalvtDenGelenDilDegeri))[i],
                style: UtilSplashText.splashFontDondur(
                    globalYaziBoyutu / globalYaziAyari)),
        ],
      ),
    ));
  }

  void ipucuGoster(WidgetRef ref) {
    ref.read(yaziyiGosterProvider.notifier).state = true;
  }

  void ipucuKaybet(WidgetRef ref) {
    ref.read(yaziyiGosterProvider.notifier).state = false;
    print("çeeeeekkk");
  }

  ipucuSoruIcon(String yol) {
    return Container(
      child: Image.asset(yol, color: UtilSplashRenkler.backColor),
    );
  }
}
