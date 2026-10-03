import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_project_1/views/About_ui.dart';
import 'package:flutter_body_health_calculator_project_1/views/bmi_ui.dart';
import 'package:flutter_body_health_calculator_project_1/views/bmr_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  
  int currentIndex = 0;

  List subViewshow=[
    BmiUi(),
    AboutUi(),
    BmrUi(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Body ว้าว'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: const Color.fromARGB(255, 244, 67, 54),
        centerTitle: true,
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, 
        onTap: (value) {
        
          setState(() {
            currentIndex = value;
          });
        },
        selectedItemColor: const Color.fromARGB(255, 244, 67, 54),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: 'BMI',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite), //
            label: 'BMR',
          ),
        ],
      ),
      body: subViewshow[currentIndex],
    );
  }
}