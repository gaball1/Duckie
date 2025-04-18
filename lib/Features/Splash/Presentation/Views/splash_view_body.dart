import 'package:englearning/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewbody extends StatelessWidget {
  const SplashViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AssetsData.logo2),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          right: 0,
          child: Image.asset(
            AssetsData.logo,
            width: 150,
            height: 180,
          ),
        ),
      ],
    );
  }
}
