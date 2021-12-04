import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: AnimatedContainer(
        duration: const Duration(seconds: 2),
        width: 300,
        height: 100,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.white, Colors.blue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.2, 0.3]),
            borderRadius: BorderRadius.circular(150),
            border: const Border.fromBorderSide(
                BorderSide(width: 1, style: BorderStyle.solid))),
      ),
    ));
  }
}
