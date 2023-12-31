import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/lib/src/constants/colors.dart';
import 'package:login_app/lib/src/features/authentication/controllers/onboarding_controller.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obController = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // LiquidSwipe(
          //   pages: obController.pages,
          //   enableSideReveal: true,
          //   liquidController: obController.controller,
          //   onPageChangeCallback: obController.onPageChangedCallback,
          //   slideIconWidget: const Icon(Icons.arrow_back_ios),
          //   waveType: WaveType.circularReveal,
          // ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () => obController.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                onPrimary: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    color: tDarkColor, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => obController.skip(),
              child: const Text("Skip", style: TextStyle(color: Colors.grey)),
            ),
          ),
          // Obx(
          //       () => Positioned(
          //     bottom: 10,
          //     child: AnimatedSmoothIndicator(
          //       count: 3,
          //       activeIndex: obController.currentPage.value,
          //       effect: const ExpandingDotsEffect(
          //         activeDotColor: Color(0xff272727),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }


}