import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:light_bulb_dark_light_mood/config/size_config.dart';

class LightBulb extends StatelessWidget {
  final double scale;
  final AnimationController controller;
  final VoidCallback onTap;

  const LightBulb(
      {required this.scale, required this.controller, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: getWidth(context) / 2 - 75,
      right: getWidth(context) / 2 - 75,
      top: 202,
      child: Transform.scale(
        scale: scale,
        child: Transform.rotate(
          angle: pi / 1,
          child: GestureDetector(
              onTapDown: (TapDownDetails details) {
                controller.forward();
              },
              onTapUp: (TapUpDetails details) {
                controller.reverse();
              },
              onTap: onTap,
              child: Image.network(
                'https://ouch-cdn2.icons8.com/X5fB-F4h5Z-W9fimJnFUJ_So5Z2Kh6ULPuw-I6jK790/rs:fit:784:1134/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNzQ3/LzU1YzYyNmUxLTI5/ZTctNDFmNS04M2Rk/LTZmOTFiMzkwMTQ4/MS5zdmc.png',
                width: 150,
              )),
        ),
      ),
    );
  }
}
