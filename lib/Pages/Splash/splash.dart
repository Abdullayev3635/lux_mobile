import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lux_mobile/Constants/rang.dart';
import 'package:lux_mobile/Pages/Auth/auth.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    A();
    super.initState();
  }

  A() {
    var duration = const Duration(seconds: 1);
    return Timer(duration, route);
  }

  route() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Auth()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cFirstColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/logolux.svg',
              width: 200,
              height: 130,
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: const Text(
                "You can improve your business with Lux Group",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
