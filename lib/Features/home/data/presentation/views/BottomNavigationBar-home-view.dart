import 'package:englearning/Features/home/data/presentation/views/Learn-view.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:englearning/Features/home/data/presentation/views/Conversation-view.dart';
import 'package:englearning/Features/home/data/presentation/views/Home-View-Body.dart';
import 'package:englearning/Features/home/data/presentation/views/Situations-view.dart';
import 'package:englearning/Features/home/data/presentation/views/lessons-view.dart';
import 'package:englearning/Features/home/data/presentation/views/app-bar-home-view.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> pages = [
    HomeViewBody(),
    LearnView(),
    SituationsView(),
    ConversationView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final items = <Widget>[
    Icon(Icons.home, size: 30, color: Colors.black),
    Icon(Icons.menu_book, size: 30, color: Colors.black),
    Icon(Icons.movie, size: 30, color: Colors.black),
    Icon(Icons.chat, size: 30, color: Colors.black),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarHome(),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.amber.shade700,
        buttonBackgroundColor: Colors.white,
        height: 60,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        index: _selectedIndex,
        items: items,
        onTap: _onItemTapped,
      ),
    );
  }
}
