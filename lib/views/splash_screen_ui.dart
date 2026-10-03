import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_body_health_calculator_project_1/views/home_ui.dart';

class splash_screen_ui extends StatefulWidget {
   splash_screen_ui({super.key});

  @override
  State<splash_screen_ui> createState() => _splash_screen_uiState();
}

class _splash_screen_uiState extends State<splash_screen_ui> {
  @override
  void initState() {
    super.initState();
    
    Timer(Duration(seconds: 3), () {
      
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => home_ui()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 69, 69),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/calculate.png'),
              width: 150,
              height: 150,
            ),
     SizedBox(height: 16), 
     Text(
      'Body Health Calculator',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    const SizedBox(height: 40), // เว้นระยะห่างจากข้อความ
            // 3. เพิ่มไอคอนหมุนโหลดตรงนี้
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
  ],
)
        )
      );
  }
}