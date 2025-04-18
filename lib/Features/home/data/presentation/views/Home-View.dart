import 'package:englearning/Features/home/data/presentation/views/BottomNavigationBar-home-view.dart';
import 'package:englearning/Features/home/data/presentation/views/Home-View-Body.dart';
import 'package:englearning/Features/home/data/presentation/views/app-bar-home-view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarHome(),
      ),
      body: HomeViewBody(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
