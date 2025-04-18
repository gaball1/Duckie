import 'package:englearning/Features/home/data/presentation/views/Home-View.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnglishTestLevelScreen extends StatefulWidget {
  @override
  _EnglishTestLevelScreenState createState() => _EnglishTestLevelScreenState();
}

class _EnglishTestLevelScreenState extends State<EnglishTestLevelScreen> {
  int currentQuestionIndex = 0;
  int score = 0;
  String? selectedAnswer;

  final List<Map<String, dynamic>> questions = [
    {
      "question": "Which sentence is grammatically correct?",
      "options": [
        "She go to school every day.",
        "She goes to school every day.",
        "She going to school every day.",
        "She wents to school every day."
      ],
      "correctAnswer": "She goes to school every day.",
    },
    {
      "question": "What is the synonym of 'Happy'?",
      "options": ["Sad", "Excited", "Angry", "Boring"],
      "correctAnswer": "Excited",
    },
    {
      "question": "Which word is a noun?",
      "options": ["Run", "Beautiful", "Apple", "Quickly"],
      "correctAnswer": "Apple",
    },
    {
      "question":
          "Choose the correct verb form: 'I ____ to the market yesterday.'",
      "options": ["Go", "Going", "Went", "Gone"],
      "correctAnswer": "Went",
    },
    {
      "question": "What is the past tense of 'Eat'?",
      "options": ["Eated", "Ate", "Eating", "Eat"],
      "correctAnswer": "Ate",
    },
  ];

  void checkAnswer(String selected) {
    setState(() {
      selectedAnswer = selected;
    });

    Future.delayed(Duration(milliseconds: 500), () {
      if (selected == questions[currentQuestionIndex]["correctAnswer"]) {
        score++;
      }

      if (currentQuestionIndex < questions.length - 1) {
        setState(() {
          currentQuestionIndex++;
          selectedAnswer = null; // Reset selection for next question
        });
      } else {
        showResultDialog();
      }
    });
  }

  String getEnglishLevel() {
    double percentage = (score / questions.length) * 100;

    if (percentage >= 80) {
      return "Advanced";
    } else if (percentage >= 50) {
      return "Intermediate";
    } else {
      return "Beginner";
    }
  }

  void showResultDialog() {
    String level = getEnglishLevel();
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text("Test Completed!"),
          content: Text(
              "Your score is $score/${questions.length}\nYour English Level: $level"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Get.off(() => HomeView());
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // White Background
      appBar: AppBar(
        title: Text("English Level Test"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Question ${currentQuestionIndex + 1}/${questions.length}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              questions[currentQuestionIndex]["question"],
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 30),
            ...questions[currentQuestionIndex]["options"].map<Widget>((option) {
              bool isSelected = selectedAnswer == option;
              return Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0), // Increased spacing
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isSelected ? Colors.blueAccent : Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                  onPressed: () => checkAnswer(option),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0), // Shift text to the right
                        child: Text(
                          option,
                          style: TextStyle(
                            fontSize: 18,
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                      if (isSelected)
                        Icon(Icons.check_circle,
                            color: Colors.white) // Selection Icon
                    ],
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
