import 'package:flutter/material.dart';
import 'package:workshop/bottom_nav.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationMenu(),
    );
  }
}
