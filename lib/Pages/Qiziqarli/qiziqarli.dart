import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lux_mobile/Constants/rang.dart';

class Qiziqarli extends StatefulWidget {
  const Qiziqarli({Key? key}) : super(key: key);

  @override
  _QiziqarliState createState() => _QiziqarliState();
}

class _QiziqarliState extends State<Qiziqarli>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: cBackColor,
        body: Column(
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
                    "Qiziqarli",
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
              height: 45,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: cTextColor2,
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.all(5),
                child: TabBar(
                  controller: _tabController,
                  // give the indicator a decoration (color and border radius)
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                    color: cFirstColor,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: cBlackColor,
                  tabs: const [
                    Tab(
                      text: 'Kitoblar',
                    ),
                    Tab(
                      text: 'Videolar',
                    ),
                    Tab(
                      text: 'Audiolar',
                    ),
                  ],
                ),
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  //kitob
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                      itemCount: 1,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: cWhiteColor,
                            ),
                            child: SizedBox(
                              height: 100,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(35),
                                      child: Image.asset(
                                        "assets/images/img_9.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Sening xayoting muhim",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: cFirstColor),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: 220,
                                        child: const Text(
                                          "Dunyodagi ilk kitoblar ikki ming yil oldin paydo bo’lgan. Ular daraxt va sham eritmasidan tayyorlangan. Ammo Priss qo’lyozmasi deb nomlangan qadimiy kitob besh yarim ming yil oldin papirus yordamida yozilgan ekan.",
                                          style: TextStyle(fontSize: 12),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "25.10.2021",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  // video
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                      itemCount: 1,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: cWhiteColor,
                            ),
                            child: SizedBox(
                              height: 100,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(35),
                                      child: Image.asset(
                                        "assets/images/img_10.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "OITS haqida batafsil",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: cFirstColor),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 220,
                                        child: Text(
                                          "https://www.youtube.com/watch?v=Ff1ruphImZE",
                                          style: TextStyle(fontSize: 12, decoration: TextDecoration.underline),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "25.10.2021",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                      itemCount: 1,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: cWhiteColor,
                            ),
                            child: SizedBox(
                              height: 100,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: 60,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(35),
                                      child: Image.asset(
                                        "assets/images/img_13.png",
                                        fit: BoxFit.fill,
                                        color: cFirstColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "ОИВ профилактикаси",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: cFirstColor),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 220,
                                        child: Text(
                                          "https://www.audio.com/hear?v=KNmcL06ya34",
                                          style: TextStyle(fontSize: 12, decoration: TextDecoration.underline),
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "11.10.2021",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
