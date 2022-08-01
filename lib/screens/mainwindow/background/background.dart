import 'package:flutter/material.dart';

import 'decoration.dart';

class Background extends StatefulWidget {
  final bool resize;
  final Color color;
  Background({Key? key, required this.resize, required this.color})
      : super(key: key);

  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  _BackgroundState();
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: widget.color,
      child: Stack(children: [BackgroundDecoration(resize: widget.resize)]),
    );
  }
}
