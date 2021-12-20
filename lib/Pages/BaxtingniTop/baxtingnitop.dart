import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lux_mobile/Constants/rang.dart';

class BaxtingniTop extends StatefulWidget {
  const BaxtingniTop({Key? key}) : super(key: key);

  @override
  _BaxtingniTopState createState() => _BaxtingniTopState();
}

class _BaxtingniTopState extends State<BaxtingniTop> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  color: cFirstColor
              ),
              padding: const EdgeInsets.only(
                  left: 20, right: 25, top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/icons/back_register.svg',
                        color: cWhiteColor,
                      ),
                    ),
                  ),
                  const Text(
                    "O'z Baxtingni top",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: cWhiteColor,
                        fontSize: 18,
                        letterSpacing: 2),
                  ),
                  const Text('    '),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
