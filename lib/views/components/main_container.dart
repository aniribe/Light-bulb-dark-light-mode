import 'package:flutter/cupertino.dart';
import 'package:light_bulb_dark_light_mood/config/app_color.dart';

class MainColorContainer extends StatelessWidget {
  final bool isOn;

  const MainColorContainer({required this.isOn});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0,
        bottom: 0,
        left: 0,
        right: 0,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          color: isOn ? AppColors.yellow : AppColors.grey,
        ));
  }
}