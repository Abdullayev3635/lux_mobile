import 'package:flutter/material.dart';
import 'package:lux_mobile/Pages/Splash/splash.dart';

import 'Pages/HomePage/homepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
    );
  }
}

class App {
  static Widget getWidget(Widget child, [EdgeInsets pad = const EdgeInsets.all(16.0)]) => Container(padding: pad, child: child,);
}