import 'package:englearning/Features/home/data/presentation/views/languages-view.dart';
import 'package:englearning/Features/home/data/presentation/views/profile-view.dart';
import 'package:englearning/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Get.to(() => LanguagesView(), preventDuplicates: true);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(AssetsData.usaFlag),
            radius: 15,
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.whatshot, color: Colors.red),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.book, color: Colors.black),
          onPressed: () {},
        ),
        GestureDetector(
          onTap: () {
            Get.to(() => ProfileView(), preventDuplicates: true);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(AssetsData.profileicon),
              radius: 15,
            ),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
