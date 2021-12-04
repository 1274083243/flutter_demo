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
      child: TweenAnimationBuilder(
        tween: Tween(begin: Offset(0, 50), end: Offset(0, 200)),
        duration: const Duration(seconds: 2),
        builder: (BuildContext context, Offset value, Widget? child) {
          return Transform.translate(
            offset: value,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          );
        },
      ),
    ));
  }
}
