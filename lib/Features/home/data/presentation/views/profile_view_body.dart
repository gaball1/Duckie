import 'package:flutter/material.dart';

class ProfileViewbody extends StatelessWidget {
  const ProfileViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: const Color(0xFF2A3748),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const Icon(Icons.star_border),
                const SizedBox(width: 12),
                const Expanded(child: Text("FREE Membership")),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text("Upgrade"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text("Edit profile"),
            onTap: () {},
          ),
          const Divider(height: 32),
          const Text(
            "Dark Mode",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ChoiceChip(
                label: const Text("Light"),
                selected: true,
                onSelected: (_) {},
              ),
              ChoiceChip(
                label: const Text("Dark"),
                selected: false,
                onSelected: (_) {},
              ),
            ],
          ),
          const SizedBox(height: 30),
          ListTile(
            title: const Text("LEARNING SETTINGS"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          const Divider(height: 32),
          const Text(
            "REMINDERS",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          SwitchListTile(
            title: const Text("Reminders"),
            value: false,
            onChanged: (_) {},
          ),
          const ListTile(
            title: Text("Time"),
            subtitle: Text("9:00 pm"),
          ),
          const ListTile(
            title: Text("Days"),
            subtitle: Text("Sun, Mon, Tue, Wed, Thu, Fri, Sat."),
          ),
          const SizedBox(height: 30),
          const Divider(),
          const Center(
            child: Text(
              "Version",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Center(
            child: Text("2025.03.24.1"),
          ),
          const SizedBox(height: 16),
          const Center(
            child: Text("Terms of Use"),
          ),
        ],
      ),
    );
  }
}
