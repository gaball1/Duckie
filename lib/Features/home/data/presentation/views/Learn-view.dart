import 'package:englearning/Features/home/data/presentation/views/lessons-view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnView extends StatelessWidget {
  const LearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "In Progress",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.fastfood, color: Colors.green),
                      title: Text(
                        "زيادة مفرداتك اللغوية: الطعام",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LessonsView()),
                          );
                        },
                        child: Text("Continue",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: LinearProgressIndicator(
                        value: 0.5,
                        backgroundColor: Colors.grey[300],
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Explore",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.handshake, color: Colors.blue),
                  title: Text(
                    "الحديث عن إحساسك",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 20),
              _lockedLessonCard("المزيد من الطعام", Icons.fastfood),
              SizedBox(height: 20),
              _lockedLessonCard("أطباق عالمية", Icons.local_dining),
              SizedBox(height: 20),
              _lockedLessonCard("المشروبات", Icons.coffee),
              SizedBox(height: 20),
              _lockedLessonCard("الحلويات", Icons.cake),
              SizedBox(height: 20),
              _lockedLessonCard("وصفات شهيرة", Icons.restaurant_menu),
            ],
          ),
        ),
      ),
    );
  }

  Widget _lockedLessonCard(String title, IconData icon) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.amber[700],
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.lock, color: Colors.white),
      ),
    );
  }
}
