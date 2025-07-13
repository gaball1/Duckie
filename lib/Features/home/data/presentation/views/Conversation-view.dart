import 'package:englearning/Features/home/data/presentation/views/Conversation_view_body.dart';
import 'package:flutter/material.dart';
import 'package:englearning/Features/home/data/presentation/views/app-bar-home-view.dart';

class ConversationView extends StatelessWidget {
  const ConversationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const ConversationViewBody(),
    );
  }
}
