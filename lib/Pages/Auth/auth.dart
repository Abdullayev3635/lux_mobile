import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lux_mobile/Constants/rang.dart';
import 'package:lux_mobile/Pages/HomePage/homepage.dart';
import 'package:lux_mobile/Pages/Login/loginpage.dart';
import 'package:lux_mobile/Pages/Register/registerpage.dart';

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
        color: cWhiteColor,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              Image.asset("assets/images/logolux2.png"),
              const SizedBox(
                height: 40,
              ),
              const Text('Xush kelibsiz', style: TextStyle(color: cFirstColor, fontSize: 26, fontWeight: FontWeight.bold),),
              const SizedBox(
                height: 30,
              ),
              InkResponse(
                onTap:() {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                    // border: Border.all(color: cFirstColor, width: 4),
                    color: cFirstColor,
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  height: 55,
                  padding: const EdgeInsets.fromLTRB(15, 2, 5, 0),
                  child: const Center(
                    child: Text("Tizimga kirish", style: TextStyle(color: cWhiteColor, fontSize: 19),),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkResponse(
                onTap:() {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: cFirstColor, width: 2),
                    color: Colors.transparent,
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                  ),
                  height: 55,
                  padding: const EdgeInsets.fromLTRB(15, 2, 5, 0),
                  child: const Center(
                    child: Text("Mehmon sifatida", style: TextStyle(color: cFirstColor, fontSize: 19),),
                  ),
                ),
              ),
              const Spacer(),
              const Center(
                child: Text(
                  "Mexmon sifatida kirish sizga dasturdan to'liq foydalanish imkoniyatini bermaydi! Iltimos ro'yhatdan o'ting",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),

              InkWell(
                onTap: () {
                  check().then((intenet) async {
                    if (intenet) {
                      Navigator.pushReplacement(
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
                height: 5,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
