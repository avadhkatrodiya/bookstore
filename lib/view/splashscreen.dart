import 'dart:async';

import 'package:bookstore_app/routes/screen_routes.dart';
import 'package:bookstore_app/utility/colors.dart';
import 'package:bookstore_app/utility/image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () {
        Get.offAllNamed(RouteUtilities.bottomScreen);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              ColorUtility.whitecolor,
              ColorUtility.blueshadow,
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            ImageUtility.bookimage,
          ),
        ),
      ),
    );
  }
}
