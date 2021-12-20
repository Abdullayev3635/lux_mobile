import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lux_mobile/Constants/rang.dart';
import 'package:lux_mobile/Pages/Register/registerpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool textVisible = false;
  TextEditingController pass = TextEditingController();
  TextEditingController login = TextEditingController();

  Future<void> inLoginFun() async {
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => const HomePage(),
    //   ),
    // );
  }

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
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: cWhiteColor,
        child: Center(
          child: InkWell(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                const Spacer(),
                SizedBox(
                  width: 250,
                  height: 150,
                  child: Image.asset(
                    'assets/images/logolux2.png',
                  ),
                ),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: cTextColor2),
                  height: 55,
                  padding: const EdgeInsets.fromLTRB(15, 2, 5, 0),
                  child: Center(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            cursorColor: cFirstColor,
                            controller: login,
                            decoration: const InputDecoration(
                              hintText: 'Login',
                              hintStyle: TextStyle(
                                color: cFirstColor,
                                fontSize: 16,
                              ),
                              border: InputBorder.none,
                              prefixIconConstraints: BoxConstraints(
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

                const SizedBox(
                  height: 20,
                ),

                /// --------------------------------------
                /// Text Form Field for submitting password
                /// --------------------------------------
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: cTextColor2),
                  height: 55,
                  padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                  child: Center(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      obscureText: !textVisible,
                      cursorColor: cFirstColor,
                      controller: pass,
                      decoration: InputDecoration(
                        hintText: 'Parol',
                        hintStyle: const TextStyle(
                          color: cFirstColor,
                          fontSize: 16,
                        ),
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: Icon(
                            textVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: cTextColor2,
                          ),
                          onPressed: () {
                            setState(() {
                              textVisible = !textVisible;
                            });
                          },
                        ),
                        prefixIconConstraints: const BoxConstraints(
                          maxWidth: 30,
                          maxHeight: 30,
                          minHeight: 25,
                          minWidth: 25,
                        ),
                        contentPadding: const EdgeInsets.only(
                            top: 15 // HERE THE IMPORTANT PART
                            ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Пожалуйста, введите пароль';
                        }
                        return null;
                      },
                      style: const TextStyle(fontSize: 16, color: cFirstColor),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                /// --------------------------------------
                /// MaterialButton for execute sign in button
                /// --------------------------------------

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 100),
                  child: MaterialButton(
                    onPressed: () {
                      check().then((intenet) async {
                        if (intenet) {
                          if (login.text.isEmpty) {
                            inLoginFun();
                          }
                        } else if (!intenet) {
                          _showToast(
                              context, 'проверьте ваше интернет-соединение');
                        }
                      });
                    },
                    //since this is only a UI app
                    child: const Text(
                      'Saqlash',
                      style: TextStyle(
                        fontSize: 16,
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
                ),

                /// --------------------------------------
                /// Text Don't have an account.
                /// --------------------------------------
                const SizedBox(
                  height: 10,
                ),

                InkWell(
                  onTap: () {
                    check().then((intenet) async {
                      if (intenet) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      } else if (!intenet) {
                        _showToast(
                            context, 'проверьте ваше интернет-соединение');
                      }
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Ro'yxatdan o'tish",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: cFirstColor,
                        fontSize: 13,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
