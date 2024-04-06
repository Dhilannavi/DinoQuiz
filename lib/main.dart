import 'package:flutter/material.dart';
import 'main_page.dart';

void main() {
  runApp(DinoQuizApp());
}

class DinoQuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DinoQuiz',
      theme: ThemeData(
        primaryColor: Colors.green[800], // Ubah warna tema menjadi hijau yang menarik
        scaffoldBackgroundColor: Colors.green[50], // Ubah latar belakang menjadi putih untuk kontras yang baik
      ),
      home: MainPage(),
    );
  }
}