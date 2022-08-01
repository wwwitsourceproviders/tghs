import 'package:flutter/material.dart';

class BackgroundDecoration extends StatefulWidget {
  final bool resize;
  const BackgroundDecoration({Key? key, required this.resize})
      : super(key: key);

  @override
  _BackgroundDecorationState createState() => _BackgroundDecorationState();
}

class _BackgroundDecorationState extends State<BackgroundDecoration> {
  _BackgroundDecorationState();

  @override
  Widget build(BuildContext context) {
    double height = 100;
    if (MediaQuery.of(context).size.width > 1270 && widget.resize) {
      height = 330;
    }
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage("assets/main-slider-v1-img.png"),
            alignment: Alignment.center,
            fit: BoxFit.cover),
        color: const Color(0xFF1630e9),
        boxShadow: [const BoxShadow(blurRadius: 40.0)],
        borderRadius: BorderRadius.vertical(
            bottom:
                Radius.elliptical(MediaQuery.of(context).size.width, 100.0)),
      ),
    );
  }
}
