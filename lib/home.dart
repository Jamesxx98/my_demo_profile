import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'about.dart';
import 'main.dart'; // For GetX Navigation

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              Get.to (AboutScreen());
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Card
            Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfpa7GQKY2arGWAXzhc_0hBuPctLrz8dLFjg&s'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Jimmy Maina',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('Mobile Developer', style: TextStyle(fontSize: 18, color: Colors.grey)),
                ],
              ),
            ),
            // Skills List
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Skills & Hobbies', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  ListView(
                    shrinkWrap: true, // Important for ListView inside SingleChildScrollView
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      SkillItem(skill: 'Flutter Developer'),
                      SkillItem(skill: 'Android Developer'),
                      SkillItem(skill: 'UI/UX Design'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String skill;
  const SkillItem({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.star, color: Colors.blue),
      title: Text(skill),
    );
  }
}
