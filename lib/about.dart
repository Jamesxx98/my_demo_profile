import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Jimmy Maina',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Jimmy Maina is a mobile developer with experience in building mobile apps using Flutter. He has a passion for creating user-friendly and performance-optimized applications.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Skills & Interests:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('• Flutter Development', style: TextStyle(fontSize: 16)),
            Text('• Dart Programming', style: TextStyle(fontSize: 16)),
            Text('• UI/UX Design', style: TextStyle(fontSize: 16)),
            Text('• Mobile App Optimization', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
