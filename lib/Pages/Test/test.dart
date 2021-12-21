import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lux_mobile/Constants/rang.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int _groupValue = 10;
  int _groupValue2 = 0;
  int _groupValue3 = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(color: cFirstColor),
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
                    "Psixalagik test",
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
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                "1. Do’stlar orasida siz:",
                style: TextStyle(
                  color: cBlackColor,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                _myRadioButton(
                  title: "Suxbatni o'zim boshlayman",
                  value: 0,
                  isCheck: true,
                  onChanged: (newValue) =>
                      setState(() => _groupValue = newValue!),
                ),
                _myRadioButton(
                  title: "Do'stlarim suxbatni bolasi",
                  value: 1,
                  isCheck: false,
                  onChanged: (newValue) =>
                      setState(() => _groupValue = newValue!),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                "2. Siz ko’proq darajada:",
                style: TextStyle(
                  color: cBlackColor,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                _myRadioButton2(
                  title: "amaliyotchi",
                  value: 4,
                  isCheck: true,
                  onChanged: (newValue) =>
                      setState(() => _groupValue2 = newValue!),
                ),
                _myRadioButton2(
                  title: "nazariyotchi",
                  value: 5,
                  isCheck: false,
                  onChanged: (newValue) =>
                      setState(() => _groupValue2 = newValue!),
                ),
              ],
            ),

            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                "3. Qaror qabul qilishda sizga quyidagilarning qay biri bilan ishlash qulayroq:",
                style: TextStyle(
                  color: cBlackColor,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                _myRadioButton3(
                  title: "qoida va standartlar bilan bilan",
                  value: 4,
                  isCheck: true,
                  onChanged: (newValue) =>
                      setState(() => _groupValue3 = newValue!),
                ),
                _myRadioButton3(
                  title: "shaxsiy tuyg’ularga asoslanib",
                  value: 5,
                  isCheck: false,
                  onChanged: (newValue) =>
                      setState(() => _groupValue3 = newValue!),
                ),
              ],
            ),

            const Spacer(),
            MaterialButton(
              minWidth: 500,
              onPressed: () {

              },
              //since this is only a UI app
              child:const Text(
                "Yakunlash",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Nudity',
                  fontWeight: FontWeight.w400,
                ),
              ),
              color: cFirstColor,
              elevation: 0,
              height: 55,
              textColor: Colors.white,

              /// --------------------------------------
              /// changing border shape of material button.
              /// --------------------------------------
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
            ),
          ],
        ),
      ),
    );
  }
  Widget _myRadioButton({
    required String title,
    required int value,
    required bool isCheck,
    required void Function(int?)? onChanged,
  }) {
    return RadioListTile(
      value: value,
      selectedTileColor: cFirstColor,
      activeColor: cFirstColor,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: Text(
        title,
        style: const TextStyle(color: cBlackColor, fontSize: 17),
      ),
    );
  }
  Widget _myRadioButton2({
    required String title,
    required int value,
    required bool isCheck,
    required void Function(int?)? onChanged,
  }) {
    return RadioListTile(
      value: value,
      selectedTileColor: cFirstColor,
      activeColor: cFirstColor,
      groupValue: _groupValue2,
      onChanged: onChanged,
      title: Text(
        title,
        style: const TextStyle(color: cBlackColor, fontSize: 17),
      ),
    );
  }

  Widget _myRadioButton3({
    required String title,
    required int value,
    required bool isCheck,
    required void Function(int?)? onChanged,
  }) {
    return RadioListTile(
      value: value,
      selectedTileColor: cFirstColor,
      activeColor: cFirstColor,
      groupValue: _groupValue3,
      onChanged: onChanged,
      title: Text(
        title,
        style: const TextStyle(color: cBlackColor, fontSize: 17),
      ),
    );
  }

}
