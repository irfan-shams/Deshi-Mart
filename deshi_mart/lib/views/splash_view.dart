import 'package:deshi_mart/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (context) {
          return Scaffold(
            backgroundColor: Color(0XFF00CA44),
            body: Center(
              child: Text(
                "Splash Screen",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          );
        });
  }
}
