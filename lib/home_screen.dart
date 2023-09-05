import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int top = 1;
  int bottom = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0.0,
        title: Text('سنگ     کاغذ     قیچی'),
        centerTitle: true,
      ),
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: _getBody(),
      ),
    );
  }

  Widget _getBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage('images/$top.png'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: Size(double.infinity, 50.0),
            ),
            onPressed: () {
              setState(() {
                top = Random().nextInt(3) + 1;
                bottom = Random().nextInt(3) + 1;
              });
            },
            child: Text(
              'شروع بازی',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image(
            image: AssetImage('images/$bottom.png'),
          ),
        ],
      ),
    );
  }
}
