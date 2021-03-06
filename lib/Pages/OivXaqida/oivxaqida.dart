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
            Container(margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),child: const Text("Orttirilgan immun tanqisligi sindromi (OITS) ??? retrovirus guruhiga mansub virus qo??zg??atadigan kasallik; ikki davrga bo??linadi: OITV infeksiyasi va bevosita OITS (SPID) davri. OITV infeksiyasi davri odam organizmida virus bor, lekin kasallik alomatlari hali na-moyon bo??lmagan davr. Virus deyarli bir vaqtda Parijda prof. Lyuk Montanye hamda AQShda prof. Gallo boshchiliYo-gidagi olimlar tomonidan kashf etilgan (1983-yil). Bu virus odamning immunitet tizimiga tanlab ta??sir ko??rsata-di, ayniqsa, SD4+ immun hujayralariga qirg??in keltiradi. Virus odam organizmiga tushgach, 2???3 kundan so??ng , 25???30% hollarda birlamchi infeksiya davriga xos alomatlar kuzatilishi mumkin. Bu o??tkir serokonversiya sin-dromi deb ataladi, bunda harorat ko??tariladi, tunda terlash, bo??g??imlar va bosh og??rig??i, loxaslik, qayt qilish, ich ketishi, badanda, ayniqsa, uning yuqori qismida toshmalar paydo bo??lishi mumkin. Bu alomatlar odam organizmiga tushgan virus ta??siriga immunitet tizimi ma??lum darajada javob qaytarish reaksiyasi bilan bog??liq. Lekin bu davrda antitelolarni aniqlash natija bermaydi, chunki immunitet tizimining javobi hali to??liq shakllanmagan bo??ladi. Kasallikning bu davri 8???10 yilgacha, ba??zan undan ham uzoq davom etishi mumkin. Hozirgi kunda amaliyotda OITV infeksiyasi tashhisini qo??yish qonda kasallik virusiga qarshi paydo bo??lgan antitelolarni aniqlash ??? immun ferment taxlili (IFT) reaksiyasiga asoslangan. Dastlabki antitelolar virus organizmga tushgach, 3 haftadan so??ng shakllana boshlasa ham, qo??llanadigan diagnostikumlar ularni ilg??ay olmaydi. Shu bois, odamga ushbu infeksiya ilashgani to??g??risida virus organizmga tushganidan so??ng 90 kun o??tkazib olingan tek-shirish natijasiga qarab xulosa chiqarish mumkin..OITS OITV infeksiyasining yakuniy davri hisoblanadi. Virus bilan organizm o??rtasidagi kurash uzoq davom etib, virusning ustunligi bilan tugaydi. Shu vaqtdan OITS davri boshlanadi. Bu davrda odam organizmi har qanday mikrobga bardosh berish xususiya-tini yo??qotadi. Jumladan, nafas, me??daichak, siydik yo??llarida doimo mavjud bo??lgan va kasallik qo??zg??ata ol-maydigan mikroblar ham faollashib, turli xastaliklarni keltirib chikari-shi mumkin. Ularning namoyon bo??lishi organizmda yuzaga kelgan OITS holati bilan bog??liq bo??lgani uchun, ushbu guruhga kiruvchi kasalliklar jamlangan holda OITS bilan bog??liq (assotsiirlan-gan) infeksiyalar deb ataladi. Bular bakterial infeksiyalar, zamburug??li kasalliklar, viruslar qo??zg??atadigan kasalliklar, Kaposhi sarkomasi va hokazo.Kasallik virusi infeksiya yuqqan odamning qonida, erkaklar shahvatida, ayollarning jinsiy a??zolari chiqindilarida va ko??krak sutida bo??ladi. Shuning uchun OITV, asosan, uch xil yo??l bilan yuqadi: qon orqali, jinsiy aloqa vositasida va infeksiya yuqqan onadan homilasiga vertikal yo??l bilan o??tadi..OITS bilan og??riganlarning ko??pchiligini narkomanlar (giyoxvandlar), fohishalar, gomo- va biseksuallar tashkil etadi. OITS organizmga jinsiy aloqa, parenteral muolajalar (nosteril igna, shprits va boshqa tibbiy anjomlar ishlatilganda), inifitsirlangan qon va uning o??rnini bosuvchi dorilarni qo??llash, a??zo va to??qimalarni ko??chirib o??tkazish (transplantatsiya) vaqtida, shuningdek, virusni yuktirib olgan onadan homilaga homiladorlik davrida, tug??ish jarayonida va go??dak emi-ziladigan bo??lsa, ko??krak suti bilan yuqib qolishi mumkin.O??zbekistonda OITV/OITS bilan bog??liq masalalar Sog??liqni saqlash vazirligining OITV/OITS xizmati tomonidan amalga oshiriladi. Respublika .OITV/OITS markazi, Qoraqalpog??iston Respublikasi OITV/OITS markazi, Toshkent shahar va viloyatlar OITV/ .OITS markazlari o??z xududlarida ushbu soha faoliyati bilan bog??liq barcha profilaktik, epidemiologik, lab. tekshiruvi, davolash tadbirlarini olib boradi. Har bir markaz qoshida o??z ixtiyori bilan lab. tekshiruvi uchun kelganlarni sir saqlagan holda tekshiradigan anonim xonalar mavjud. Maqsadli guruhlargiyohvandlar va seks xodimlari bilan virus yuqib qolishining odsini olish maqsadida xufiyona ish olib boradigan Ishonch punktlari (IP) ham ishlaydi.Profilaktikasi. Ushbu infeksiya keng tarqalgan kasalliklardan biri bo??lgani uchun muhofaza tadbirlari ijtimoiy hayotning barcha soha vakillari ishtirokida olib borilishi lozim. Har bir yigit-qiz bu infeksiyaning tarqalish yo??llari, uning oldini oladigan tadbirlardan xabardor bo??lishi va o??zini undan ehtiyot qilishi kerak", style: TextStyle(fontSize: 17, color: Colors.black87),))
          ],
        ),
      ),
    );
  }
}
