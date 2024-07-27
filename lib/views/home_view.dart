import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Leaf',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff4CB051),
      ),
      body: Center(
        child: Text(
          'Hello world!',
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
