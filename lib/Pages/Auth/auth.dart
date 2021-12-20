import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lux_mobile/Constants/rang.dart';
import 'package:lux_mobile/Pages/HomePage/homepage.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {


  Future<void> inLoginFun() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
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
        color: cBackColor,
        child: Center(
          child: ListView(
            padding: const EdgeInsets.all(30),
            shrinkWrap: true,
            children: <Widget>[
              const SizedBox(
                width:5,
                height: 120,
              ),
              SizedBox(
                width: 120,
                height: 50,
                child: Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    color: cFirstColor,
                    shape: BoxShape(

                    )
                  ),
                ),
              ),

              const SizedBox(
                height: 65,
              ),
              /// --------------------------------------
              /// Text Form Field for submitting Login
              /// --------------------------------------

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cGrayColor1),
                height: 55,
                padding: const EdgeInsets.fromLTRB(15, 2, 5, 0),
                child: Center(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/call.svg',
                        color: cTextColor2,
                      ),
                      const SizedBox(width: 6,),
                      const Text(
                        '+998(',
                        style:
                        TextStyle(fontSize: 16, color: cTextColor2),
                      ),
                      Expanded(
                        child: TextFormField(
                          inputFormatters: [maskFormatter],
                          keyboardType: TextInputType.phone,
                          cursorColor: cTextColor2,
                          controller: login,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            prefixIconConstraints: BoxConstraints(
                              maxWidth: 30,
                              maxHeight: 30,
                              minHeight: 25,
                              minWidth: 25,
                            ),
                          ),
                          style:
                          const TextStyle(fontSize: 16, color: cTextColor2),
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: cGrayColor1),
                height: 55,
                padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                child: Center(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: !textVisible,
                    cursorColor: cTextColor2,
                    controller: pass,
                    decoration: InputDecoration(
                      hintText: 'Парол',
                      hintStyle: const TextStyle(
                        color: cTextColor,
                        fontSize: 14,
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
                      contentPadding:
                      const EdgeInsets.only(top: 15 // HERE THE IMPORTANT PART
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.fromLTRB(2.0, 0, 6.0, 0),
                        child: SvgPicture.asset(
                          'assets/icons/pass_lock.svg',
                          color: cTextColor2,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Пожалуйста, введите пароль';
                      }
                      return null;
                    },
                    style: const TextStyle(fontSize: 16, color: cTextColor2),
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              /// --------------------------------------
              /// MaterialButton for execute sign in button
              /// --------------------------------------

              MaterialButton(
                onPressed: () {
                  check().then((intenet) async {
                    if (intenet) {
                      if (login.text.isEmpty) {
                        //   _showToast(context,
                        //       'Пожалуйста, попробуйте еще раз, введя номер телефона');
                        // } else if (pass.text.isEmpty) {
                        //   _showToast(
                        //       context, 'Введите пароль и попробуйте еще раз');
                        // } else {
                        inLoginFun();
                      }
                    } else if (!intenet) {
                      _showToast(
                          context, 'проверьте ваше интернет-соединение');
                    }
                  });
                },
                //since this is only a UI app
                child: loading
                    ? _widget
                    : const Text(
                  'Войти',
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
                    borderRadius: BorderRadius.circular(14)),
              ),

              /// --------------------------------------
              /// Text Don't have an account.
              /// --------------------------------------
              const SizedBox(
                height: 10,
              ),

              const Center(
                child: Text(
                  "Сизнинг соғлиғингиз  бизнинг вазифамиз!",
                  style: TextStyle(color: cFirstColor, fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'Nuditys'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
