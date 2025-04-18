import 'package:englearning/Features/home/data/presentation/views/Signup.dart';
import 'package:englearning/Features/home/data/presentation/views/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Text(
              "Why is Duckie\ndifferent?",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 50),
            FeatureItem(
              icon: Icons.school,
              text: "Learning tailored to you",
            ),
            FeatureItem(
              icon: Icons.play_circle_outline,
              text: "Immerse in locals speaking videos",
            ),
            FeatureItem(
              icon: Icons.chat_bubble_outline,
              text: "Communicate with AI or People \nfor practice",
            ),
            const SizedBox(
              height: 220,
            ),
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Signupview()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(221, 30, 32, 67),
                      padding:
                          EdgeInsets.symmetric(horizontal: 110, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Get started",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginView()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(221, 255, 255, 255),
                      padding:
                          EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "I have an account",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String text;

  FeatureItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Icon(icon, size: 28, color: Colors.black87),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
