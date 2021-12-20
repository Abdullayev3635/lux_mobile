import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lux_mobile/Constants/rang.dart';

class OivXaqida extends StatefulWidget {
  const OivXaqida({Key? key}) : super(key: key);

  @override
  _OivXaqidaState createState() => _OivXaqidaState();
}

class _OivXaqidaState extends State<OivXaqida> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    "OIV Haqida",
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
            const SizedBox(height: 10,),
            const Text(
              "\" O I V \" Bu o'zi nima",
              style: TextStyle(
                  color: cBlackColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Container(margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),child: const Text("Orttirilgan immun tanqisligi sindromi (OITS) — retrovirus guruhiga mansub virus qoʻzgʻatadigan kasallik; ikki davrga boʻlinadi: OITV infeksiyasi va bevosita OITS (SPID) davri. OITV infeksiyasi davri odam organizmida virus bor, lekin kasallik alomatlari hali na-moyon boʻlmagan davr. Virus deyarli bir vaqtda Parijda prof. Lyuk Montanye hamda AQShda prof. Gallo boshchiliYo-gidagi olimlar tomonidan kashf etilgan (1983-yil). Bu virus odamning immunitet tizimiga tanlab taʼsir koʻrsata-di, ayniqsa, SD4+ immun hujayralariga qirgʻin keltiradi. Virus odam organizmiga tushgach, 2—3 kundan soʻng , 25—30% hollarda birlamchi infeksiya davriga xos alomatlar kuzatilishi mumkin. Bu oʻtkir serokonversiya sin-dromi deb ataladi, bunda harorat koʻtariladi, tunda terlash, boʻgʻimlar va bosh ogʻrigʻi, loxaslik, qayt qilish, ich ketishi, badanda, ayniqsa, uning yuqori qismida toshmalar paydo boʻlishi mumkin. Bu alomatlar odam organizmiga tushgan virus taʼsiriga immunitet tizimi maʼlum darajada javob qaytarish reaksiyasi bilan bogʻliq. Lekin bu davrda antitelolarni aniqlash natija bermaydi, chunki immunitet tizimining javobi hali toʻliq shakllanmagan boʻladi. Kasallikning bu davri 8—10 yilgacha, baʼzan undan ham uzoq davom etishi mumkin. Hozirgi kunda amaliyotda OITV infeksiyasi tashhisini qoʻyish qonda kasallik virusiga qarshi paydo boʻlgan antitelolarni aniqlash — immun ferment taxlili (IFT) reaksiyasiga asoslangan. Dastlabki antitelolar virus organizmga tushgach, 3 haftadan soʻng shakllana boshlasa ham, qoʻllanadigan diagnostikumlar ularni ilgʻay olmaydi. Shu bois, odamga ushbu infeksiya ilashgani toʻgʻrisida virus organizmga tushganidan soʻng 90 kun oʻtkazib olingan tek-shirish natijasiga qarab xulosa chiqarish mumkin..OITS OITV infeksiyasining yakuniy davri hisoblanadi. Virus bilan organizm oʻrtasidagi kurash uzoq davom etib, virusning ustunligi bilan tugaydi. Shu vaqtdan OITS davri boshlanadi. Bu davrda odam organizmi har qanday mikrobga bardosh berish xususiya-tini yoʻqotadi. Jumladan, nafas, meʼdaichak, siydik yoʻllarida doimo mavjud boʻlgan va kasallik qoʻzgʻata ol-maydigan mikroblar ham faollashib, turli xastaliklarni keltirib chikari-shi mumkin. Ularning namoyon boʻlishi organizmda yuzaga kelgan OITS holati bilan bogʻliq boʻlgani uchun, ushbu guruhga kiruvchi kasalliklar jamlangan holda OITS bilan bogʻliq (assotsiirlan-gan) infeksiyalar deb ataladi. Bular bakterial infeksiyalar, zamburugʻli kasalliklar, viruslar qoʻzgʻatadigan kasalliklar, Kaposhi sarkomasi va hokazo.Kasallik virusi infeksiya yuqqan odamning qonida, erkaklar shahvatida, ayollarning jinsiy aʼzolari chiqindilarida va koʻkrak sutida boʻladi. Shuning uchun OITV, asosan, uch xil yoʻl bilan yuqadi: qon orqali, jinsiy aloqa vositasida va infeksiya yuqqan onadan homilasiga vertikal yoʻl bilan oʻtadi..OITS bilan ogʻriganlarning koʻpchiligini narkomanlar (giyoxvandlar), fohishalar, gomo- va biseksuallar tashkil etadi. OITS organizmga jinsiy aloqa, parenteral muolajalar (nosteril igna, shprits va boshqa tibbiy anjomlar ishlatilganda), inifitsirlangan qon va uning oʻrnini bosuvchi dorilarni qoʻllash, aʼzo va toʻqimalarni koʻchirib oʻtkazish (transplantatsiya) vaqtida, shuningdek, virusni yuktirib olgan onadan homilaga homiladorlik davrida, tugʻish jarayonida va goʻdak emi-ziladigan boʻlsa, koʻkrak suti bilan yuqib qolishi mumkin.Oʻzbekistonda OITV/OITS bilan bogʻliq masalalar Sogʻliqni saqlash vazirligining OITV/OITS xizmati tomonidan amalga oshiriladi. Respublika .OITV/OITS markazi, Qoraqalpogʻiston Respublikasi OITV/OITS markazi, Toshkent shahar va viloyatlar OITV/ .OITS markazlari oʻz xududlarida ushbu soha faoliyati bilan bogʻliq barcha profilaktik, epidemiologik, lab. tekshiruvi, davolash tadbirlarini olib boradi. Har bir markaz qoshida oʻz ixtiyori bilan lab. tekshiruvi uchun kelganlarni sir saqlagan holda tekshiradigan anonim xonalar mavjud. Maqsadli guruhlargiyohvandlar va seks xodimlari bilan virus yuqib qolishining odsini olish maqsadida xufiyona ish olib boradigan Ishonch punktlari (IP) ham ishlaydi.Profilaktikasi. Ushbu infeksiya keng tarqalgan kasalliklardan biri boʻlgani uchun muhofaza tadbirlari ijtimoiy hayotning barcha soha vakillari ishtirokida olib borilishi lozim. Har bir yigit-qiz bu infeksiyaning tarqalish yoʻllari, uning oldini oladigan tadbirlardan xabardor boʻlishi va oʻzini undan ehtiyot qilishi kerak", style: TextStyle(fontSize: 17, color: Colors.black87),))
          ],
        ),
      ),
    );
  }
}
