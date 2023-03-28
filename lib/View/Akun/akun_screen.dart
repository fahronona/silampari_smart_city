import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:silampari_smart_city/Style/color_style.dart';
import 'package:silampari_smart_city/Style/font_style.dart';

class Akun extends StatefulWidget {
  const Akun({super.key});

  @override
  State<Akun> createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: Color(0xffF8F8F8),
          child: ListView(children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 18, left: 18, top: 20, bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Akun",
                      style: FontsStyle.fontBold600
                          .copyWith(color: Colors.black, fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 17),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.account_circle,
                                color: StyleColors.primaryColors40,
                                size: 89,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Fahron Onasutra",
                                    style: FontsStyle.fontBold600
                                        .copyWith(fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text("fahron@mail.com",
                                      style: FontsStyle.fontMedium500
                                          .copyWith(fontSize: 12)),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text("08123456789",
                                      style: FontsStyle.fontMedium500
                                          .copyWith(fontSize: 12)),
                                ],
                              )
                            ],
                          ),
                          Icon(
                            Icons.edit,
                            color: StyleColors.primaryColors40,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Container(
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffE0F3E7)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Verifikasi NIK ",
                                style: FontsStyle.fontBold600
                                    .copyWith(fontSize: 10),
                              ),
                              Text(
                                "kamu untuk kemudahan menggunakan aplikasi",
                                style: FontsStyle.fontMedium500
                                    .copyWith(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: StyleColors.primaryColors40),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: Text(
                              "Verifikasi NIK",
                              style: FontsStyle.fontBold600
                                  .copyWith(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18, top: 13),
                    child: Text(
                      "Info",
                      style: FontsStyle.fontBold600
                          .copyWith(color: Colors.black, fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18, top: 20, right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.vaccines,
                              color: StyleColors.primaryColors40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Status Vaksin",
                              style: FontsStyle.fontBold600.copyWith(
                                  color: Color(0xff5E5E5E), fontSize: 14),
                            ),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_right_rounded,
                            color: Color(0xff5E5E5E))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 18, top: 30, right: 18, bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.card_giftcard_outlined,
                              color: StyleColors.primaryColors40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Bantuan Sosial",
                              style: FontsStyle.fontBold600.copyWith(
                                  color: Color(0xff5E5E5E), fontSize: 14),
                            ),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_right_rounded,
                            color: Color(0xff5E5E5E))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18, top: 13),
                    child: Text(
                      "Bantuan",
                      style: FontsStyle.fontBold600
                          .copyWith(color: Colors.black, fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18, top: 20, right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.assistant,
                              color: StyleColors.primaryColors40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Kritik & Saran",
                              style: FontsStyle.fontBold600.copyWith(
                                  color: Color(0xff5E5E5E), fontSize: 14),
                            ),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_right_rounded,
                            color: Color(0xff5E5E5E))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 18, top: 30, right: 18, bottom: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.quiz,
                              color: StyleColors.primaryColors40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "FAQ",
                              style: FontsStyle.fontBold600.copyWith(
                                  color: Color(0xff5E5E5E), fontSize: 14),
                            ),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_right_rounded,
                            color: Color(0xff5E5E5E))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 18, top: 30, right: 18, bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: StyleColors.primaryColors40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Kontak",
                              style: FontsStyle.fontBold600.copyWith(
                                  color: Color(0xff5E5E5E), fontSize: 14),
                            ),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_right_rounded,
                            color: Color(0xff5E5E5E))
                      ],
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
