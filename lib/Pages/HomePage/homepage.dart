import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lux_mobile/Constants/rang.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lux_mobile/Pages/BaxtingniTop/baxtingnitop.dart';
import 'package:lux_mobile/Pages/Chat/chat.dart';
import 'package:lux_mobile/Pages/Doktorlar/doktorlar.dart';
import 'package:lux_mobile/Pages/Migrantlar/migrantlar.dart';
import 'package:lux_mobile/Pages/OivXaqida/oivxaqida.dart';
import 'package:lux_mobile/Pages/Qiziqarli/qiziqarli.dart';
import 'package:lux_mobile/Pages/Test/test.dart';
import 'Driver/driver.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget>? imageSliders;
  List<String> imgList = [];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> doSomeRek() async {
    imgList = [
      "assets/images/img.png",
      "assets/images/img_1.png",
      "assets/images/img_2.png",
      "assets/images/img_3.png",
    ];
    imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
                child: Image.asset(item, fit: BoxFit.cover, width: 1000.0),
              ),
            ))
        .toList();
    setState(() {});
  }

  @override
  void initState() {
    doSomeRek();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: cBackColor,
        key: _scaffoldKey,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: const BoxDecoration(color: cFirstColor),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkResponse(
                        child: SvgPicture.asset(
                          'assets/icons/driwer_icon_togri.svg',
                          color: cWhiteColor,
                          width: 25,
                          height: 25,
                        ),
                        onTap: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                      ),
                      const Text(
                        "Lux app",
                        style: TextStyle(color: cWhiteColor, fontSize: 18),
                      ),
                      IconButton(
                        icon: const Icon(Icons.chat),
                        color: cWhiteColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Chat(),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  imageSliders != null
                      ? CarouselSlider(
                          options: CarouselOptions(
                            aspectRatio: 1.0,
                            scrollDirection: Axis.horizontal,
                            autoPlay: true,
                            height: 150,
                            viewportFraction: 1.0,
                            enlargeCenterPage: false,
                          ),
                          items: imageSliders,
                        )
                      : Container(),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(40),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: cBackColor,
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  // border: Border.all(color: cFirstColor, width: 4),
                                  borderRadius: BorderRadius.circular(14),
                                  color: cWhiteColor,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: cTextColor2,
                                      blurRadius: 20.0,
                                      spreadRadius: 1.0,
                                    )
                                  ],
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Qiziqarli(),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Icon(
                                        Icons.verified_outlined,
                                        color: cFirstColor,
                                        size: 32,
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Zerikdingizmi?',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: cFirstColor,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              flex: 1,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: cWhiteColor,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: cTextColor2,
                                      blurRadius: 20.0,
                                      spreadRadius: 1.0,
                                    )
                                  ],
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Test(),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Icon(
                                        Icons.edit_road_outlined,
                                        color: cFirstColor,
                                        size: 32,
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Psixologik test',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: cFirstColor,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                        flex: 1,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  // border: Border.all(color: cFirstColor, width: 4),
                                  borderRadius: BorderRadius.circular(14),
                                  color: cWhiteColor,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: cTextColor2,
                                      blurRadius: 20.0,
                                      spreadRadius: 1.0,
                                    )
                                  ],
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Doktorlar(),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Icon(
                                        Icons.supervised_user_circle_outlined,
                                        color: cFirstColor,
                                        size: 32,
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Doktorlar',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: cFirstColor,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              flex: 1,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  // border: Border.all(color: cFirstColor, width: 4),
                                  borderRadius: BorderRadius.circular(14),
                                  color: cWhiteColor,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: cTextColor2,
                                      blurRadius: 20.0,
                                      spreadRadius: 1.0,
                                    )
                                  ],
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const BaxtingniTop(),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Icon(
                                        Icons.people_outline_rounded,
                                        color: cFirstColor,
                                        size: 32,
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Baxtingni Top',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: cFirstColor,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                        flex: 1,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Expanded(
                        child: Row(
                          children: [

                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: cWhiteColor,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: cTextColor2,
                                      blurRadius: 20.0,
                                      spreadRadius: 1.0,
                                    )
                                  ],
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const OivXaqida(),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Icon(
                                        Icons.info_outline,
                                        color: cFirstColor,
                                        size: 32,
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        "OIV bu...",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: cFirstColor,
                                            fontSize: 12,
                                            letterSpacing: 2),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              flex: 1,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  // border: Border.all(color: cFirstColor, width: 4),
                                  borderRadius: BorderRadius.circular(14),
                                  color: cWhiteColor,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: cTextColor2,
                                      blurRadius: 20.0,
                                      spreadRadius: 1.0,
                                    )
                                  ],
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Migrantlar(),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Icon(
                                        Icons.night_shelter_outlined,
                                        color: cFirstColor,
                                        size: 32,
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Migrantlar uchun',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: cFirstColor,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                        flex: 1,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
              flex: 25,
            ),
          ],
        ),
        drawer: const Drawer(
          child: Driwer(),
          elevation: 0,
        ),
      ),
    );
  }
}
