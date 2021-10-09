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
        ],
      ),
    );
  }
}
