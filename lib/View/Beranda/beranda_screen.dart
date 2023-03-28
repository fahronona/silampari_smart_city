import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:silampari_smart_city/Style/color_style.dart';
import 'package:silampari_smart_city/Style/font_style.dart';

class BerandaScreen extends StatefulWidget {
  const BerandaScreen({Key? key}) : super(key: key);

  @override
  State<BerandaScreen> createState() => _BerandaScreenState();
}

class _BerandaScreenState extends State<BerandaScreen> {
  List bannerData = [
    "assets/image-banner.png",
    "assets/image-banner-2.png",
    "assets/image-banner-3.png",
  ];

  List menuData = [
    {"assets": "assets/icon-hospital.png", "title": "Kesehatan"},
    {"assets": "assets/icon-school.png", "title": "Pendidikan"},
    {"assets": "assets/icon-wisata.png", "title": "Pariwisata"},
    {"assets": "assets/icon-pray.png", "title": "Ibadah"},
  ];
  List menuDataDua = [
    {"assets": "assets/icon-kopri.png", "title": "Internal"},
    {"assets": "assets/icon-cctv.png", "title": "CCTV"},
    {"assets": "assets/icon-cityzen.png", "title": "Masyarakat"},
    {"assets": "assets/icon-other-menu.png", "title": "Lainya"},
  ];
  final CarouselController _controller = CarouselController();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 18, left: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 100, child: Image.asset('assets/main-logo.png')),
                Stack(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: StyleColors.primaryColors40,
                      size: 30,
                    ),
                    Positioned(
                        right: 2,
                        top: 3,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                        )),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18, left: 18, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider(
                    carouselController: _controller,
                    items: [
                      ...bannerData.map((e) {
                        return Image.asset(e);
                      })
                    ],
                    options: CarouselOptions(
                        aspectRatio: 2,
                        viewportFraction: 1,
                        autoPlay: true,
                        onPageChanged: ((index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }))),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  /// mainAxisAlignment: MainAxisAlignment.center,
                  children: bannerData.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: _current == entry.key ? 35.0 : 11.0,
                        height: 11.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: _current == entry.key
                                ? StyleColors.primaryColors40
                                : Colors.grey),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18, left: 18, top: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pindai untuk masuk/keluar lokasi",
                          style: FontsStyle.fontBold600,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Kolaborasi",
                              style: FontsStyle.fontMedium500
                                  .copyWith(color: Colors.grey, fontSize: 14),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              "assets/logo-peduli-lindungi.png",
                              height: 30,
                              fit: BoxFit.cover,
                              width: 90,
                            ),
                          ],
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/icon-scan.png',
                      width: 38,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 25, left: 25, top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...menuData.map((e) {
                  return Container(
                    height: 80,
                    width: 85,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                          child: Image.asset(
                            e["assets"],
                            width: 40,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          e["title"],
                          style: FontsStyle.fontBold600,
                        )
                      ],
                    ),
                  );
                })
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 25, left: 25, top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...menuDataDua.map((e) {
                  return Container(
                    height: 80,
                    width: 85,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                          child: Image.asset(
                            e["assets"],
                            width: 40,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          e["title"],
                          style: FontsStyle.fontBold600,
                        )
                      ],
                    ),
                  );
                })
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18, left: 18, top: 40),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Majapahit, Lubuklinggau Timur I",
                          style: FontsStyle.fontBold600,
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Sabtu, 19 November 2022",
                          style: FontsStyle.fontMedium500,
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Cerah berawan",
                          style: FontsStyle.fontMedium500
                              .copyWith(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/icon-weather.png',
                          width: 38,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "25 ° C ",
                          style: FontsStyle.fontBold600,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18, left: 18, top: 25),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Panggilan darurat",
                          style: FontsStyle.fontBold600,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/icon-phone.png',
                          width: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 18, left: 18, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Berita Terbaru",
                  style: FontsStyle.fontBold600,
                ),
                Text("Lihat Semua",
                    style: FontsStyle.fontMedium500
                        .copyWith(color: StyleColors.primaryColors40))
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
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
