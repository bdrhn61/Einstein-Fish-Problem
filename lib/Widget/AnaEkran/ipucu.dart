import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/Widget/AnaEkran/soruWidget.dart';

import '../../DilPaketi/dilKoduDondur.dart';
import '../../Provider/allProvider.dart';

class Ipucu extends ConsumerWidget {
  const Ipucu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool yaziyiGoster = ref.watch(yaziyiGosterProvider);

    return yaziyiGoster
        ? Container(
            color: Colors.blue,
            child:
                soruWidget(dilKoduDondur(globalvtDenGelenDilDegeri), context))
        : const SizedBox();
  }
}
