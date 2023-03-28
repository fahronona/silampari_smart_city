import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:silampari_smart_city/Style/color_style.dart';

import '../../Style/font_style.dart';

class Berita extends StatefulWidget {
  const Berita({super.key});

  @override
  State<Berita> createState() => _BeritaState();
}

class _BeritaState extends State<Berita> {
  int currentIndex = 0;
  List category = ["Semua", "Olahraga", "Kabar Pasar", "Pendidikan"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 18, left: 18),
            child: Text(
              "Berita",
              style: FontsStyle.fontBold600
                  .copyWith(color: Colors.black, fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 18, left: 18),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 15,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                  style: FontsStyle.fontMedium500,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: StyleColors.primaryColors40,
                    ),
                    hintText: "Cari berita",
                    hintStyle: FontsStyle.fontMedium500
                        .copyWith(color: Color(0xffC5C1C1), fontSize: 12),
                    contentPadding: EdgeInsets.all(10),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    fillColor: Colors.white,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: SizedBox(
              height: 34,
              width: MediaQuery.of(context).size.width / 1,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.only(left: index == 0 ? 24 : 0, right: 12),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: StyleColors.primaryColors40),
                              color: currentIndex == index
                                  ? StyleColors.primaryColors40
                                  : Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 12, left: 12, top: 5, bottom: 8),
                            child: Center(
                              child: Text(
                                category[index],
                                style: FontsStyle.fontMedium500.copyWith(
                                    color: currentIndex == index
                                        ? Colors.white
                                        : StyleColors.primaryColors40),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 18, left: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 104,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blueGrey),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            "assets/main-logo-white.png",
                            height: 36,
                            width: 76,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Staf Ahli II Tutup Kegiatan Silamparide Road to Srwijaya...",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style:
                                  FontsStyle.fontBold600.copyWith(fontSize: 14),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "04  Juni  2022",
                              style: FontsStyle.fontMedium500
                                  .copyWith(fontSize: 12),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 18, left: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 104,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            "assets/main-logo-white.png",
                            height: 36,
                            width: 76,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Walikota Lubuklinggau Bersama 57 Wali Kota se-ind...",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style:
                                  FontsStyle.fontBold600.copyWith(fontSize: 14),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "04  Juni  2022",
                              style: FontsStyle.fontMedium500
                                  .copyWith(fontSize: 12),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 18, left: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 104,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            "assets/main-logo-white.png",
                            height: 36,
                            width: 76,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Disbudpar Provinsi Sumsel Siap Dukung Ayo Ngelong...",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style:
                                  FontsStyle.fontBold600.copyWith(fontSize: 14),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "04  Juni  2022",
                              style: FontsStyle.fontMedium500
                                  .copyWith(fontSize: 12),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
