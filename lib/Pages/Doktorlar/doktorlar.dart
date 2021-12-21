import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lux_mobile/Constants/rang.dart';
import 'package:lux_mobile/Pages/Doktorlar/DoktorInfo/doktorinfo.dart';
import 'package:lux_mobile/Pages/Models/doktormodel.dart';

class Doktorlar extends StatefulWidget {
  const Doktorlar({Key? key}) : super(key: key);

  @override
  _DoktorlarState createState() => _DoktorlarState();
}

class _DoktorlarState extends State<Doktorlar> {
  List<DoktorModel> _list = [];

  void _load() async {
    _list.add(
      DoktorModel(
        name: "Abdullaev Olloyor",
        time: "11:30",
        izoh:
            "Tibbiy martaba yoki kasb tibbiy maktabda o'qishni va sizning malakangizni tasdiqlovchi tibbiy ma'lumotnomani olishni talab qiladi. ",
        image: "assets/images/abdullayev.jpg",
      ),
    );
    _list.add(
      DoktorModel(
        name: "Mamurov G'olibjon",
        time: "8:00",
        izoh:
            "Dunyo bo'ylab tibbiyot maktablari talabalarga bakalavriat, magistratura va hattoki doktorlik darajalari kabi turli darajalarda sifatli tibbiy ta'lim beradi",
        image: "assets/images/img_4.png",
      ),
    );
    _list.add(
      DoktorModel(
        name: "Izzatullayev Kamolxon",
        time: "9:50",
        izoh:
            "Odamlar tibbiyot maktabida o'qishni va tibbiyot darajasini o'rganishni tanlashining sabablari juda ko'p. Bu shaxsiy qo'ng'iroqdan tortib to hisoblangan moliyaviy daromadgacha",
        image: "assets/images/img_5.png",
      ),
    );
    _list.add(
      DoktorModel(
        name: "Yoqubov Umidjon",
        time: "10:20",
        izoh:
            "Chet eldagi eng yaxshi tibbiyot maktabida tibbiyotni o'rganish uzoq muddatli majburiyat va beparvo bo'lmaslik kerak bo'lgan qaror",
        image: "assets/images/img_6.png",
      ),
    );

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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemCount: _list.length,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DoktorInfo(tovarList: _list[index]),
                        ),
                      );
                    },
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
                                child: Image.asset(_list[index].image, fit: BoxFit.fill,),
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
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
                            const SizedBox(
                              width: 25,
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
    );
  }
}
