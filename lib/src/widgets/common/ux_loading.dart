import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:starter_project/src/config/constant.dart';

class UXLoading extends StatelessWidget {
  const UXLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LottieBuilder.asset(
            "assets/lottie/liquid-loading.json",
            width: 140,
            height: 140,
          ),
          const Text(
            'Mohon Tunggu',
            style: TextStyle(
                fontSize: AppConstants.kFontSizeL, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            'Sedang menyiapkan data...',
            style: TextStyle(
                fontSize: AppConstants.kFontSizeM, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
