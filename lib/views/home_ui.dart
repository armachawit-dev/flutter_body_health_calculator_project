import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// โค้ดสำหรับหน้าจอหลัก (home_ui)
class home_ui extends StatelessWidget {
  const home_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Body Health Calculator'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: 'BMI'),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.weightScale),
            label: 'BMF',
          ),
        ],
      ),
    );
  }
}
