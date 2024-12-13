import 'package:driveway_app/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'dart:async'; // For the timer

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'onboardingScreen');
    }); // To set the timer duration and the path
    return Scaffold(
      backgroundColor: ColorConstant.colorPrimary,
      body: Stack( // To put element in certain position (vertical & horizontal)
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/logo_driveway.png', 
                  width: 150, 
                  height: 150, 
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                "Drive your way, Anytime.",
                style: TextStyle(
                  fontFamily: "AvenirHeavy",
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
