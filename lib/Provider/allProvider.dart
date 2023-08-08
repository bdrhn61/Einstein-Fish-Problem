import 'package:confetti/confetti.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

double globalEn=0;
double globalBoy=0;
double globalYaziAyari=0;
double globalYaziBoyutu=0;
String globalvtDenGelenDilDegeri='';

late ConfettiController controllerCenter =
    ConfettiController(duration: const Duration(seconds: 10));



final yaziyiGosterProvider  = StateProvider<bool>((ref) => false);
final sayacStateProvider  = StateProvider<double>((ref) => 0);
