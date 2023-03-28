import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:silampari_smart_city/Style/color_style.dart';
import 'package:silampari_smart_city/Style/font_style.dart';
import 'package:silampari_smart_city/View/Akun/akun_screen.dart';
import 'package:silampari_smart_city/View/Beranda/beranda_screen.dart';
import 'package:silampari_smart_city/View/Berita/berita_screen.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int currentIndex = 0;
  late StreamSubscription<bool> keyboardSubscription;
  bool buttonVisibility = false;
  List page = [BerandaScreen(), Berita(), Container(), Container(), Akun()];

  void button() {
    if (mounted) {
      var keyboardVisibilityController = KeyboardVisibilityController();
      keyboardSubscription =
          keyboardVisibilityController.onChange.listen((bool visible) {
        setState(() {
          buttonVisibility = visible;
        });

        print(buttonVisibility);
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    button();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: buttonVisibility == false
          ? FloatingActionButton(
              backgroundColor: StyleColors.primaryColors40,
              highlightElevation: 0,
              child: Center(
                child: Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              elevation: 0,
              onPressed: () {},
            )
          : Container(),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 50,
          onTap: (value) {
            setState(() {
              if (value != 2) {
                currentIndex = value;
              }
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedFontSize: 13,
          unselectedFontSize: 13,
          iconSize: 24,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: StyleColors.primaryColors40,
          selectedLabelStyle: FontsStyle.fontBold600
              .copyWith(color: StyleColors.primaryColors40, fontSize: 13),
          unselectedLabelStyle:
              FontsStyle.fontBold600.copyWith(color: Colors.grey),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.home,
                color: StyleColors.primaryColors40,
              ),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.newspaper,
                  color: Colors.grey,
                ),
                activeIcon: Icon(
                  Icons.newspaper,
                  color: StyleColors.primaryColors40,
                ),
                label: "Berita"),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: "Lapor"),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.calendar_month_rounded,
                  color: Colors.grey,
                ),
                activeIcon: Icon(
                  Icons.calendar_month_rounded,
                  color: StyleColors.primaryColors40,
                ),
                label: "Agenda"),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.account_circle,
                  color: Colors.grey,
                ),
                activeIcon: Icon(
                  Icons.account_circle,
                  color: StyleColors.primaryColors40,
                ),
                label: "Akun"),
          ]),
    );
  }
}
