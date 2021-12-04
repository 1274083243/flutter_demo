import 'package:flutter/material.dart';

/// 数字滚动的动画页
class NumPickAnimationPage extends StatefulWidget {
  const NumPickAnimationPage({Key? key}) : super(key: key);

  @override
  _NumPickAnimationPageState createState() => _NumPickAnimationPageState();
}

class _NumPickAnimationPageState extends State<NumPickAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          duration: Duration(milliseconds: 3000),
          tween: Tween<double>(begin: 7, end: 10),
          builder: (BuildContext context, double value, Widget? widget) {
            var whole = value ~/ 1;
            var decimal = value - whole;
            return Container(
              color: Colors.blue,
              width: 200,
              height: 120,
              child: Stack(
                children: [
                  Positioned(
                    top: -100 * decimal,
                    child: Opacity(
                      opacity: 1 - decimal,
                      child: Text(
                        "${whole}",
                        style: TextStyle(fontSize: 100),
                      ),
                    ),
                  ),
                  Positioned(
                    top: (100 - decimal * 100),
                    child: Opacity(
                      opacity: decimal,
                      child: Text(
                        "${whole + 1}",
                        style: TextStyle(fontSize: 100),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
