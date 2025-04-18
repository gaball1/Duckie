import 'package:englearning/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class LessonsView extends StatelessWidget {
  const LessonsView({super.key});

  @override
  Widget build(BuildContext context) {
    final AudioPlayer player = AudioPlayer();

    final String imageUrl = AssetsData.chicken; // Local asset path
    final String englishName = "Chicken";
    final String arabicName = "فرخة";

    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson"),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image Display (Fixed)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    // Use Image.asset instead of Image.network
                    imageUrl,
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // English and Arabic Name
              Text(
                englishName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                arabicName,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
              SizedBox(height: 20),

              // Sound Button (Fixed)
              IconButton(
                icon: Icon(Icons.volume_up, size: 40, color: Colors.blueAccent),
                onPressed: () async {
                  await player.play(AssetSource(
                      'audios/Chicken.mp3')); // Use AssetSource instead of UrlSource
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
