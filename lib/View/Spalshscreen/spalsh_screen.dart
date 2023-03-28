import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:silampari_smart_city/Style/font_style.dart';
import 'package:silampari_smart_city/View/Beranda/beranda_screen.dart';
import 'package:silampari_smart_city/View/Mainmenu/mainmenu.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const MainMenu()),
          (Route<dynamic> route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white.withOpacity(0.0),
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: SizedBox(
                height: 110, child: Image.asset('assets/splash-up-item.png')),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: FadeInUp(
              child: SizedBox(
                  height: 80, child: Image.asset('assets/main-logo.png')),
            ),
          ),
          Positioned(
              bottom: 10, child: Text("V 1.0.0", style: FontsStyle.fontBold600))
        ],
      ),
    );
  }
}
