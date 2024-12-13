import 'package:driveway_app/utils/color_constant.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.colorPrimary,
      appBar: AppBar(
        backgroundColor: ColorConstant.colorPrimary,
        title: Text(
          "DriveWay",
          style: TextStyle(
              color: ColorConstant.colorWhite, fontFamily: "AvenirBlack"),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24),
            Expanded(
              child: Image.asset(
                'assets/images/porsche_onboarding.png', 
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 24), 
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Controls how child widgets align from left to right within the column
                children: [
                  Text(
                    "Find Your Perfect\nRide.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "AvenirBlack",
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Explore a wide selection of cars, book effortlessly, and hit the road with confidence. Drive Your Way, Anytime.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "AvenirHeavy",
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'dashboardScreen');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: Center(
                  child: Text(
                    "Start Now",
                    style: TextStyle(
                      fontFamily: "AvenirBlack",
                      fontSize: 18,
                      color: ColorConstant.colorPrimary,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
