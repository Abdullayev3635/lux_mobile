import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lux_mobile/Constants/rang.dart';
import 'package:lux_mobile/Pages/Models/doktormodel.dart';

class Doktorlar extends StatefulWidget {
  const Doktorlar({Key? key}) : super(key: key);

  @override
  _DoktorlarState createState() => _DoktorlarState();
}

class _DoktorlarState extends State<Doktorlar> {
  List<DoktorModel> _list = [];

  void _load() async {
    _list.add(DoktorModel(
        name: "Xasanov",
        time: "12:50",
        izoh: "Qalesiz nima gap Qalesiz nima gap Qalesiz nima gap Qalesiz nima gap Qalesiz nima gap Qalesiz nima gap "));
    _list.add(
        DoktorModel(name: "Xasanov", time: "12:50", izoh: "Qalesiz nima gap"));
    _list.add(
        DoktorModel(name: "Xasanov", time: "12:50", izoh: "Qalesiz nima gap"));
    _list.add(
        DoktorModel(name: "Xasanov", time: "12:50", izoh: "Qalesiz nima gap"));
    setState(() {});
  }

  @override
  void initState() {
    _load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: cBackColor,
        body: ListView(
          shrinkWrap: true,
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
                    "Shifokorlar",
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                  itemCount: _list.length,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: cWhiteColor,
                      ),
                      child: SizedBox(
                        height: 110,
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
                                child:
                                    Image.asset("assets/images/abdullayev.jpg"),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _list[index].name,
                                  style: const TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    _list[index].izoh,
                                    maxLines: 2,
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              _list[index].time,
                              style: const TextStyle(
                                  color: cBlackColor, fontSize: 14),
                            ),
                            const SizedBox(width: 25,),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
