import 'package:flutter/material.dart';
import 'navigation_hub.dart';

void main() {
  runApp(const LifeSyncApp());
}

class LifeSyncApp extends StatelessWidget {
  const LifeSyncApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LifeSync',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueAccent,
        scaffoldBackgroundColor: const Color(0xFF0F172A), // Deep Navy
        useMaterial3: true,
      ),
      home: const NavigationHub(),
    );
  }
}