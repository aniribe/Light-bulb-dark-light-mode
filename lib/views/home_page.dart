import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                color: _isOn ? Colors.yellow : Colors.grey.shade700,
              )),
          Positioned(
              left: MediaQuery.of(context).size.width / 2 - 4,
              right: MediaQuery.of(context).size.width / 2 - 4,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(50)),
              )),
          _isOn
              ? Positioned(
                  left: MediaQuery.of(context).size.width / 2 - 75,
                  right: MediaQuery.of(context).size.width / 2 - 75,
                  top: 202,
                  child: Transform.scale(
                    scale: _scale,
                    child: Transform.rotate(
                      angle: pi / 1,
                      child: GestureDetector(
                          onTapDown: _tapDown,
                          onTapUp: _tapUp,
                          onTap: () {
                            _isOn = false;
                          },
                          child: Image.network(
                            'https://ouch-cdn2.icons8.com/X5fB-F4h5Z-W9fimJnFUJ_So5Z2Kh6ULPuw-I6jK790/rs:fit:784:1134/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNzQ3/LzU1YzYyNmUxLTI5/ZTctNDFmNS04M2Rk/LTZmOTFiMzkwMTQ4/MS5zdmc.png',
                            width: 150,
                          )),
                    ),
                  ),
                )
              : Positioned(
                  left: MediaQuery.of(context).size.width / 2 - 75,
                  right: MediaQuery.of(context).size.width / 2 - 75,
                  top: 202,
                  child: Transform.scale(
                    scale: _scale,
                    child: Transform.rotate(
                      angle: pi / 1,
                      child: GestureDetector(
                          onTapDown: _tapDown,
                          onTapUp: _tapUp,
                          onTap: () {
                            _isOn = true;
                          },
                          child: Image.network(
                            'https://ouch-cdn2.icons8.com/X5fB-F4h5Z-W9fimJnFUJ_So5Z2Kh6ULPuw-I6jK790/rs:fit:784:1134/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNzQ3/LzU1YzYyNmUxLTI5/ZTctNDFmNS04M2Rk/LTZmOTFiMzkwMTQ4/MS5zdmc.png',
                            width: 150,
                          )),
                    ),
                  )),
        ],
      ),
    );
  }

  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
