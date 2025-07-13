import 'package:flutter/material.dart';

class ConversationViewBody extends StatefulWidget {
  const ConversationViewBody({super.key});

  @override
  State<ConversationViewBody> createState() => _ConversationViewBodyState();
}

class _ConversationViewBodyState extends State<ConversationViewBody> {
  int _selectedTabIndex = 2; // Default to Missions tab as shown in screenshot

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Personal Hotspot info (from screenshot)

        // Top tabs (All, Chats, Missions)
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => setState(() => _selectedTabIndex = 0),
                child: TabItem(
                  title: 'All',
                  isSelected: _selectedTabIndex == 0,
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => _selectedTabIndex = 1),
                child: TabItem(
                  title: 'Chats',
                  isSelected: _selectedTabIndex == 1,
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => _selectedTabIndex = 2),
                child: TabItem(
                  title: 'Missions',
                  isSelected: _selectedTabIndex == 2,
                ),
              ),
            ],
          ),
        ),

        const Divider(height: 1, thickness: 1),

        // Content based on selected tab
        Expanded(
          child: _buildTabContent(),
        ),
      ],
    );
  }

  Widget _buildTabContent() {
    switch (_selectedTabIndex) {
      case 0: // All tab
        return _buildAllTabContent();
      case 1: // Chats tab
        return _buildChatsSection();
      case 2: // Missions tab (default)
        return _buildMissionsSection();
      default:
        return Container();
    }
  }

  Widget _buildAllTabContent() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: _buildChatsSection(showTitle: false)),
        SliverToBoxAdapter(child: _buildMissionsSection(showTitle: true)),
      ],
    );
  }

  Widget _buildChatsSection({bool showTitle = true}) {
    final List<Map<String, dynamic>> chats = [
      {
        'name': 'Ahmed',
        'message': 'Hello! How are you?',
        'time': '10:30 AM',
        'unread': true
      },
      {
        'name': 'Sarah',
        'message': 'Let\'s practice English',
        'time': 'Yesterday',
        'unread': false
      },
      {
        'name': 'MemBot',
        'message': 'Your daily lesson is ready',
        'time': '9:15 AM',
        'unread': true
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showTitle)
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              'Recent Chats',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: chats.length,
          itemBuilder: (context, index) {
            final chat = chats[index];
            return ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: Text(
                chat['name'],
                style: TextStyle(
                  fontWeight:
                      chat['unread'] ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              subtitle: Text(
                chat['message'],
                style: TextStyle(
                  fontWeight:
                      chat['unread'] ? FontWeight.bold : FontWeight.normal,
                  color: chat['unread'] ? Colors.black : Colors.grey,
                ),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    chat['time'],
                    style: const TextStyle(fontSize: 12),
                  ),
                  if (chat['unread'])
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                ],
              ),
              onTap: () {
                // Handle chat tap
              },
            );
          },
        ),
      ],
    );
  }

  Widget _buildMissionsSection({bool showTitle = true}) {
    final List<Map<String, String>> missions = [
      {
        'title': 'مبتدئ: طلب القوة المفضلة لديك',
        'description': 'Beginner: Order your favorite drink',
        'image': 'assets/images/Coffe.jpg',
      },
      {
        'title': 'متوسط: حجز فندق',
        'description': 'Intermediate: Hotel booking',
        'image': 'assets/images/Hotel1.jpg',
      },
      {
        'title': 'متقدم: مقابلة عمل',
        'description': 'Advanced: Job interview',
        'image': 'assets/images/Interview.jpg',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showTitle)
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              'Missions',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ...missions.map((mission) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: MissionCard(
                title: mission['title']!,
                description: mission['description']!,
                imagePath: mission['image']!,
              ),
            )),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'MemBot - powered by AI',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

class TabItem extends StatelessWidget {
  final String title;
  final bool isSelected;

  const TabItem({
    super.key,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, top: 16, bottom: 12),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected ? Colors.black : Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          if (isSelected)
            Container(
              height: 2,
              width: 20,
              color: Colors.blue,
            ),
        ],
      ),
    );
  }
}

class MissionCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const MissionCard({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[300]!),
        ),
        child: Row(
          children: [
            // Image on the left
            ClipRRect(
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(12),
              ),
              child: Image.asset(
                imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            // Text content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
