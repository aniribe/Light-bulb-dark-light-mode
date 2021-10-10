import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:light_bulb_dark_light_mood/config/app_color.dart';
import 'package:light_bulb_dark_light_mood/config/size_config.dart';

class CableItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: getWidth(context) / 2 - 4,
        right: getWidth(context) / 2 - 4,
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              color: AppColors.darkGrey,
              borderRadius: BorderRadius.circular(50)),
        ));
  }
}
