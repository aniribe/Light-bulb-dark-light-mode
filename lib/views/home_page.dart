import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/cable_item.dart';
import 'components/light_bulb.dart';
import 'components/main_container.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  bool _isOn = false;

  late double _scale;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 300),
        lowerBound: 0,
        upperBound: 0.1)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return Scaffold(
      body: Stack(
        children: [
          MainColorContainer(isOn: _isOn),
          CableItem(),
          LightBulb(
            scale: _scale,
            controller: _controller,
            onTap: () {
              _isOn = !_isOn;
            },
          ),
        ],
      ),
    );
  }
}
