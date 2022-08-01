import 'package:flutter/material.dart';

import 'background/background.dart';

class MainWindow extends StatefulWidget {
  final bool resize;
  final Color color;
  final Widget? child;
  final Widget? button;


  const MainWindow({Key? key, required this.resize,required this.color,this.child,this.button}) : super(key: key);

  @override
  _MainWindowState createState() => _MainWindowState();
}

class _MainWindowState extends State<MainWindow> {
  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      floatingActionButton: 
            widget.button,
      body: Stack(
        children:[ 
          Background(resize:widget.resize,color:widget.color),
          widget.child ?? Container()
          ]
      ),);
  }
}