import 'dart:async';

import 'package:coffe_backry/pages/home_page.dart';
import 'package:coffe_backry/pages/login_page.dart';
import 'package:coffe_backry/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    movingPage();
  }

  void movingPage() {
    Timer(Duration(seconds: 2 ), () {
      SpUtil.getString("email_user") == "" ? Get.off(LoginPage()) :  Get.off(HomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/bg.png",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // baris ke-1
                Container(
                  margin: EdgeInsets.only(
                      left: 20, top: MediaQuery.of(context).size.height * 0.05),
                  child: Row(
                    children: [
                      Image.asset("assets/logo.png"),
                      SizedBox(width: 9),
                      Text(
                        "CnC Creation",
                        style: splashTextstyle1.copyWith(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // baris ke-2
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Coffee",
                        style: splashTextstyle2.copyWith(
                          color: Colors.grey,
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "   Backry",
                        style: splashTextstyle2.copyWith(
                          color: Colors.grey,
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                // baris ke-3
                // Posisi ini sekarang dihandle oleh Stack dan Positioned.fill
              ],
            ),
          ],
        ),
      ),
    );
  }
}
