import 'package:englearning/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:englearning/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //  for testing
  //final prefs = await SharedPreferences.getInstance();
  //await prefs.remove(
  //  'hasSeenOnboarding'); // or prefs.setBool('hasSeenOnboarding', false);
  runApp(const Duckie());
}

class Duckie extends StatelessWidget {
  const Duckie({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kprimarycolor,
      ),
      home: const SplashView(),
    );
  }
}
