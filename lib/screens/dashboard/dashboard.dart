import 'package:flutter/material.dart';
import 'package:tghs/screens/dashboard/header.dart';
import 'package:tghs/screens/mainwindow/background/background.dart';

import 'body.dart';


class DashboardScreen extends StatefulWidget {


  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  

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
            SizedBox(
              width:108,
              child: PhysicalModel(
                color: Colors.white,
              elevation: 8,
              shadowColor: Colors.red,
              borderRadius: BorderRadius.circular(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(width: 8),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 30.0
                      ),
                    ),
                  ],
                ),
              ),
            ),
      body: Stack(
        children:[ 
          Background(resize:false,color:Color(0xFFFFFFFF)),
          Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        HeaderScreen(),
        SizedBox(height: 20,),
        BodyScreen()
          ]),]
      ),);
  }
}