import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

import '../../../Provider/allProvider.dart';

class Konfeti extends StatelessWidget {
  const Konfeti({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConfettiWidget(
      confettiController: controllerCenter,
      colors: const [
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.yellow,
      ],
      blastDirection: -pi / 2,
      emissionFrequency: 0.05,
      numberOfParticles: 50,
    );
  }
}