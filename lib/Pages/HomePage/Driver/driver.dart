import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lux_mobile/Constants/rang.dart';
import 'package:lux_mobile/Pages/History/history.dart';

class Driwer extends StatelessWidget {
  const Driwer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: InkResponse(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SvgPicture.asset(
                  'assets/icons/driwer_icon.svg',
                  color: cFirstColor,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 100, bottom: 50),
              child: Center(
                child: Image.asset(
                  'assets/images/logolux2.png',
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text(
            'Mening profilim',
            style: TextStyle(color: cFirstColor, fontSize: 16),
          ),
          leading: const Icon(Icons.account_circle_outlined, color: cFirstColor,),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const History()));
            // Navigator.pushNamed(context, Routes.noInternet);
          },
        ),
        ListTile(
          title: const Text(
            "Ko'riklar tarixi",
            style: TextStyle(
                color: cFirstColor,
                fontSize: 16),
          ),
          leading: const Icon(Icons.history, color: cFirstColor,),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const History()));
            // Navigator.pushNamed(context, Routes.noInternet);
          },
        ),
        ListTile(
          title: const Text(
            'Sozlama',
            style: TextStyle(
                color: cFirstColor,
                fontSize: 16),
          ),
          leading: const Icon(Icons.settings_outlined, color: cFirstColor,),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const History()));
            // Navigator.pushNamed(context, Routes.noInternet);
          },
        ),
        ListTile(
          title: const Text(
            'Dastur haqida',
            style: TextStyle(
                color: cFirstColor,
                fontSize: 16),
          ),
          leading: const Icon(Icons.phone_android_outlined, color: cFirstColor,),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const History()));
            // Navigator.pushNamed(context, Routes.noInternet);
          },
        ),
        ListTile(
          title: const Text(
            "Foydali maslaxatlar",
            style: TextStyle(
                color: cFirstColor,
                fontSize: 16),
          ),
          leading: const Icon(Icons.verified_user_outlined, color: cFirstColor,),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const History()));
            // Navigator.pushNamed(context, Routes.noInternet);
          },
        ),
        ListTile(
          title: const Text(
            "Yangiliklar",
            style: TextStyle(
                color: cFirstColor,
                fontSize: 16),
          ),
          leading: const Icon(Icons.notification_important_outlined, color: cFirstColor,),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const History()));
            // Navigator.pushNamed(context, Routes.noInternet);
          },
        ),
        ListTile(
          title: const Text(
            "Qo'llab-quvvatlash xizmati",
            style: TextStyle(
                color: cFirstColor,
                fontSize: 16),
          ),
          leading: const Icon(Icons.supervised_user_circle_outlined, color: cFirstColor,),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const History()));
            // Navigator.pushNamed(context, Routes.noInternet);
          },
        ),
        // const SizedBox(height: 80,),
        ListTile(
          title: const Text(
            'Dasturdan chiqish',
            style: TextStyle(
                color: Colors.red,
                fontSize: 16),
          ),
          leading: const Icon(Icons.logout_outlined, color: Colors.red,),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const History()));
            // Navigator.pushNamed(context, Routes.noInternet);
          },
        ),
        // ListTile(
        //   title: const Text(
        //     'Dastur haqida',
        //     style: TextStyle(
        //         color: cFirstColor,
        //         fontSize: 16,
        //         decoration: TextDecoration.underline),
        //   ),
        //   leading: const Icon(Icons.phone_android_outlined, color: cFirstColor,),
        //   onTap: () {
        //     Navigator.of(context)
        //         .push(MaterialPageRoute(builder: (context) => const History()));
        //     // Navigator.pushNamed(context, Routes.noInternet);
        //   },
        // ),
      ],
    );
  }
}
