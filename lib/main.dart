import 'package:flutter/material.dart';
import 'package:rock_paper_siser_app/home_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vb'),
      home: HomeScreen(),
    );
  }
}
