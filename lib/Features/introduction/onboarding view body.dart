import 'package:englearning/Features/home/data/presentation/views/about.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreenViewbody extends StatelessWidget {
  const OnboardingScreenViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Welcome to Duckie",
            body: "Learn English in a fun and interactive way!",
            image: Image.asset('assets/images/duck1 (1).png'),
          ),
          PageViewModel(
            title: "Engaging Lessons",
            body: "Explore various topics with interactive content.",
            image: Image.asset('assets/images/duck1 (1).png'),
          ),
          PageViewModel(
            title: "Start Your Journey",
            body: "Let's begin your language learning adventure!",
            image: Image.asset('assets/images/duck1 (1).png'),
          ),
        ],
        done: const Text("Done"),
        onDone: () async {
          await _completeOnboarding();
        },
        next: const Icon(Icons.arrow_forward),
        showSkipButton: true,
        skip: const Text("Skip"),
        onSkip: () async {
          await _completeOnboarding();
        },
      ),
    );
  }

  Future<void> _completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasSeenOnboarding', true);
    Get.off(() => const AboutView()); // Navigate to Introduction
  }
}
