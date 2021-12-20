import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:lux_mobile/Constants/rang.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../Login/loginpage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

enum SingingCharacter { E, A }

class _RegisterPageState extends State<RegisterPage> {
  SingingCharacter? _character = SingingCharacter.E;
  TextEditingController fio = TextEditingController();
  TextEditingController tel1 = TextEditingController();
  TextEditingController sana = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController passAgain = TextEditingController();
  TextEditingController manzil = TextEditingController();
  DateTime? selectedDateBosh;
  var customFormat = DateFormat('yyyy-MM-dd');
  DateTime selectedOnly = DateTime.now();

  bool parolVisible = false;
  bool parol2Visible = false;
  bool rang = true;

  var maskFormatter = MaskTextInputFormatter(mask: '##)###-##-##');
  bool loading = false;
  bool loadingMain = false;
  late Widget widgetMain;
  late Widget _widget;

  late String id = "";

  Future<void> inRegisterFun() async {}

  void _showToast(BuildContext context, String text) {
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black87,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  Future<bool> check() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
        return true;
      },
      child: Scaffold(
        backgroundColor: cWhiteColor,
        body: loadingMain
            ? widgetMain
            : Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: cWhiteColor,
                child: Center(
                  child: InkWell(
                    onTap: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: ListView(
                      padding:
                          const EdgeInsets.only(bottom: 30, top: 30, right: 30),
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 25, top: 20, bottom: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginPage(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                    'assets/icons/back_register.svg',
                                    color: cFirstColor,
                                  ),
                                ),
                              ),
                              const Text(
                                "Ro'yhatdan o'tish",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: cFirstColor,
                                    fontSize: 18),
                              ),
                              const Text('    '),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 100,
                          child: Image.asset(
                            'assets/images/logolux2.png',
                          ),
                        ),


                        /// ism familiya
                        Row(
                          children: [
                            const Expanded(
                              child: Icon(
                                Icons.ac_unit,
                                color: cFirstColor,
                                size: 12,
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: cTextColor2),
                                height: 55,
                                padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                                child: Center(
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    controller: fio,
                                    cursorColor: cFirstColor,
                                    decoration: const InputDecoration(
                                      hintText: 'FIO',
                                      hintStyle: TextStyle(
                                        color: cFirstColor,
                                        fontSize: 14,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    style: const TextStyle(
                                        fontSize: 16, color: cFirstColor),
                                  ),
                                ),
                              ),
                              flex: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),

                        /// tugilgan sana
                        Row(
                          children: [
                            const Expanded(
                              child: Icon(
                                Icons.ac_unit,
                                color: cFirstColor,
                                size: 12,
                              ),
                              flex: 1,
                            ),
                            const Expanded(
                              child: SizedBox(
                                height: 55,
                                child: Center(
                                  child: Text(
                                    "Tug'ilgan sana",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: cFirstColor,
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                              flex: 5,
                            ),
                            Expanded(
                              child: InkResponse(
                                onTap: () => showPicker2(context),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: cTextColor2),
                                  height: 50,
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Center(
                                    child: Text(
                                      selectedDateBosh == null
                                          ? customFormat.format(selectedOnly)
                                          : customFormat
                                              .format(selectedDateBosh!),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(
                                              fontSize: 17, color: cFirstColor),
                                    ),
                                  ),
                                ),
                              ),
                              flex: 5,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        /// jinsini tanlash
                        Row(
                          children: [
                            const Expanded(
                              child: Icon(
                                Icons.ac_unit,
                                color: cFirstColor,
                                size: 12,
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Jinsi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: cFirstColor,
                                          fontSize: 15),
                                    ),
                                    Row(children: [
                                      Row(
                                        children: [
                                          Radio<SingingCharacter>(
                                            activeColor: cFirstColor,
                                            hoverColor: cFirstColor,
                                            fillColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => cFirstColor),
                                            value: SingingCharacter.E,
                                            groupValue: _character,
                                            onChanged:
                                                (SingingCharacter? value) {
                                              setState(() {
                                                _character = value;
                                              });
                                            },
                                          ),
                                          const Text(
                                            'Erkak',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: cFirstColor,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Radio<SingingCharacter>(
                                            activeColor: cFirstColor,
                                            hoverColor: cFirstColor,
                                            fillColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => cFirstColor),
                                            value: SingingCharacter.A,
                                            groupValue: _character,
                                            onChanged:
                                                (SingingCharacter? value) {
                                              setState(() {
                                                _character = value;
                                              });
                                            },
                                          ),
                                          const Text(
                                            'Ayol',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: cFirstColor,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ])
                                  ],
                                ),
                              ),
                              flex: 10,
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        /// tel nomer
                        Row(
                          children: [
                            const Expanded(
                              child: Icon(
                                Icons.ac_unit,
                                color: cFirstColor,
                                size: 12,
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: cTextColor2),
                                height: 55,
                                padding: const EdgeInsets.fromLTRB(15, 2, 5, 0),
                                child: Center(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/call.svg',
                                        color: cFirstColor,
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      const Text(
                                        '+998(',
                                        style: TextStyle(
                                            fontSize: 16, color: cFirstColor),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          inputFormatters: [maskFormatter],
                                          keyboardType: TextInputType.phone,
                                          cursorColor: cFirstColor,
                                          controller: tel1,
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            prefixIconConstraints:
                                                BoxConstraints(
                                              maxWidth: 30,
                                              maxHeight: 30,
                                              minHeight: 25,
                                              minWidth: 25,
                                            ),
                                          ),
                                          style: const TextStyle(
                                              fontSize: 16, color: cFirstColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              flex: 10,
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 16,
                        ),

                        ///address
                        Row(
                          children: [
                            const Expanded(
                              child: Icon(
                                Icons.ac_unit,
                                color: cFirstColor,
                                size: 12,
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: cTextColor2),
                                height: 55,
                                padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                                child: Center(
                                  child: TextFormField(
                                    controller: manzil,
                                    keyboardType: TextInputType.text,
                                    cursorColor: cFirstColor,
                                    decoration: const InputDecoration(
                                      hintText: 'Manzil',
                                      hintStyle: TextStyle(
                                        color: cFirstColor,
                                        fontSize: 14,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    style: const TextStyle(
                                        fontSize: 16, color: cFirstColor),
                                  ),
                                ),
                              ),
                              flex: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),

                        /// password
                        Row(
                          children: [
                            const Expanded(
                              child: Icon(
                                Icons.ac_unit,
                                color: cFirstColor,
                                size: 12,
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: cTextColor2),
                                height: 55,
                                padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                                child: Center(
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    cursorColor: cFirstColor,
                                    obscureText: !parolVisible,
                                    controller: passAgain,
                                    decoration: InputDecoration(
                                      hintText: 'Parol',
                                      hintStyle: const TextStyle(
                                        color: cFirstColor,
                                        fontSize: 14,
                                      ),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          parolVisible
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: cFirstColor,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            parolVisible = !parolVisible;
                                          });
                                        },
                                      ),
                                      border: InputBorder.none,
                                      prefixIconConstraints:
                                          const BoxConstraints(
                                        maxWidth: 30,
                                        maxHeight: 30,
                                        minHeight: 25,
                                        minWidth: 25,
                                      ),
                                      contentPadding: const EdgeInsets.only(
                                          top: 15 // HERE THE IMPORTANT PART
                                          ),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            2.0, 0, 6.0, 0),
                                        child: SvgPicture.asset(
                                          'assets/icons/pass_lock.svg',
                                          color: cFirstColor,
                                        ),
                                      ),
                                    ),
                                    // validator: (value) {
                                    //   if (value.isEmpty) {
                                    //     return 'Iltimos Parol kiriting';
                                    //   }
                                    //   return null;
                                    // },
                                    style: const TextStyle(
                                        fontSize: 16, color: cFirstColor),
                                  ),
                                ),
                              ),
                              flex: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),

                        /// password again
                        Row(
                          children: [
                            const Expanded(
                              child: Icon(
                                Icons.ac_unit,
                                color: cFirstColor,
                                size: 12,
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: cTextColor2),
                                height: 55,
                                padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                                child: Center(
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    obscureText: !parol2Visible,
                                    cursorColor: cFirstColor,
                                    controller: pass,
                                    decoration: InputDecoration(
                                      hintText: 'Qayta parol',
                                      hintStyle: const TextStyle(
                                        color: cFirstColor,
                                        fontSize: 14,
                                      ),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          parol2Visible
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: cFirstColor,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            parol2Visible = !parol2Visible;
                                          });
                                        },
                                      ),
                                      border: InputBorder.none,
                                      prefixIconConstraints:
                                          const BoxConstraints(
                                        maxWidth: 30,
                                        maxHeight: 30,
                                        minHeight: 25,
                                        minWidth: 25,
                                      ),
                                      contentPadding: const EdgeInsets.only(
                                          top: 15 // HERE THE IMPORTANT PART
                                          ),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            2.0, 0, 6.0, 0),
                                        child: SvgPicture.asset(
                                          'assets/icons/pass_lock.svg',
                                          color: cFirstColor,
                                        ),
                                      ),
                                    ),
                                    style: const TextStyle(
                                        fontSize: 16, color: cFirstColor),
                                  ),
                                ),
                              ),
                              flex: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),

                        /// register button
                        Row(
                          children: [
                            const Expanded(
                              child: Icon(
                                Icons.ac_unit,
                                color: cWhiteColor,
                                size: 12,
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: MaterialButton(
                                onPressed: () {
                                  check().then((intenet) async {
                                    if (intenet) {
                                      if (fio.text.isEmpty) {
                                        _showToast(context,
                                            'Пожалуйста, попробуйте еще раз, введя имя');
                                      } else {
                                        inRegisterFun();
                                      }
                                    } else if (!intenet) {
                                      _showToast(context,
                                          'проверьте ваше интернет-соединение');
                                    }
                                  });
                                },
                                //since this is only a UI app
                                child: loading
                                    ? _widget
                                    : const Text(
                                        "Ro'yxatdan o'tish",
                                        style: TextStyle(
                                          fontSize: 13,
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
                              flex: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Ro'yxatdan o'tganmisiz ?",
                                style: TextStyle(
                                  color: cFirstColor,
                                  fontSize: 13,
                                )),

                            /// --------------------------------------
                            /// Text sign up.
                            /// --------------------------------------
                            const SizedBox(
                              width: 4,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ),
                                );
                              },
                              child: const Text("Kirish",
                                  style: TextStyle(
                                    color: cFirstColor,
                                    fontSize: 13,
                                    decoration: TextDecoration.underline,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  Future<void> showPicker2(BuildContext context) async {
    DatePicker.showDatePicker(context,
        showTitleActions: true,
        minTime: DateTime(1900, 1, 1),
        maxTime: DateTime(2025, 12, 31),
        theme: const DatePickerTheme(
            headerColor: cFirstColor,
            backgroundColor: cTextColor2,
            itemStyle: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
            doneStyle: TextStyle(color: Colors.white, fontSize: 16)),
        onChanged: (date) {
      selectedDateBosh = date;
      setState(() {});
    }, onConfirm: (date) {
      selectedDateBosh = date;
      setState(() {});
    }, currentTime: DateTime.now(), locale: LocaleType.en);
  }
}
/*

 */
