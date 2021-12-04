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
      child: Container(
        width: 300,
        height: 300,
        color: Colors.red,
        child: AnimatedSwitcher(
          transitionBuilder: (child, animation) {
            return ScaleTransition(
                scale: animation,
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ));
          },
          duration: const Duration(seconds: 2),
          child: Text(
            "hellow3",
            key: UniqueKey(),
            style: TextStyle(fontSize: 100),
          ),
        ),
      ),
    ));
  }
}
