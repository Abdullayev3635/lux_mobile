import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lux_mobile/Constants/rang.dart';
import 'package:lux_mobile/Pages/Models/doktormodel.dart';

class DoktorInfo extends StatefulWidget {
  DoktorModel? tovarList;

  DoktorInfo({
    required this.tovarList,
  }) : super();

  @override
  _DoktorInfoState createState() => _DoktorInfoState();
}

class _DoktorInfoState extends State<DoktorInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: SvgPicture.asset(
                        "assets/icons/back_register.svg",
                        color: cFirstColor,
                      )),
                  Text(
                    widget.tovarList!.name,
                    style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.normal,
                        color: cFirstColor),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      widget.tovarList!.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              /// nomer
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cWhiteColor),
                height: 55,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 22,
                    ),
                    SvgPicture.asset(
                      'assets/icons/call.svg',
                      height: 20,
                      width: 20,
                      color: cFirstColor,
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    const Text(
                      "+998-93-213-36-35",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: cFirstColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              /// region
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cWhiteColor),
                height: 55,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 22,
                    ),
                    SvgPicture.asset(
                      'assets/icons/location.svg',
                      height: 20,
                      width: 20,
                      color: cFirstColor,
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    const Expanded(
                        child: Text(
                      "Farg'ona shaxar",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: cFirstColor),
                      maxLines: 2,
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              /// manzil
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cWhiteColor),
                height: 55,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 22,
                    ),
                    SvgPicture.asset(
                      'assets/icons/address.svg',
                      height: 20,
                      width: 20,
                      color: cFirstColor,
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    const Expanded(
                        child: Text(
                      "Farg'ona halqa yo'li",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: cFirstColor),
                      maxLines: 2,
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              /// expirence
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cWhiteColor),
                height: 55,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 22,
                    ),
                    SvgPicture.asset(
                      'assets/icons/person.svg',
                      height: 20,
                      width: 20,
                      color: cFirstColor,
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    const Expanded(
                        child: Text(
                      "Shifokor haqida",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: cFirstColor),
                      maxLines: 2,
                    )),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    const SizedBox(width: 20,),
                    Image.asset(
                      'assets/images/img_7.png',
                      height: 24,
                      width: 24,
                    ),
                    const Expanded(
                      child: Text(
                        "olloyor.me",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: cFirstColor,
                        decoration: TextDecoration.underline),
                        maxLines: 2,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/images/img_8.png',
                      height: 24,
                      width: 24,
                    ),
                    const Expanded(
                        child: Text(
                          "olloyor_tg",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: cFirstColor,
                              decoration: TextDecoration.underline),
                          maxLines: 2,
                        )),
                    const SizedBox(width: 20,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
