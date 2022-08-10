import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:tghs/ui/route.configuration.dart';

void main() {
  runApp(const MyApp());

  doWhenWindowReady(() {
    const initialSize = Size(600, 280);
    appWindow.minSize = initialSize;
    appWindow.maxSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*Timer(Duration(milliseconds: 2000), () {
      appWindow.maxSize = Size(0, 0);
      appWindow.maximize();
    });*/
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            ),
      onGenerateInitialRoutes: (initialRoute) {
        return [
          RouteConfiguration.onGenerateRoute(RouteSettings(name: initialRoute))!
        ];
      },
      initialRoute: '/',
      onGenerateRoute: RouteConfiguration.onGenerateRoute,
      onUnknownRoute: (settings) {
        //html.window.location.href = settings.name;
      });
  }
}
