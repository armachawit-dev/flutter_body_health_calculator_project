import 'package:flutter/material.dart';

class AboutUi extends StatelessWidget {
  const AboutUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Text(
          'Body Health Calculator',
          style: TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 244, 67, 54),
        ),
      ),
      SizedBox(height: 40), // เว้นระยะห่างจากข้อความ
      Image.asset(
        'assets/images/calculate.png',
        width: 150,
        height: 150,
      ),
      SizedBox(height: 40), // เว้นระยะห่างจากภาพ
      Text(
          'คำนวณค่าดัชนีมวลกาย (BMI)',
          style: TextStyle(
            fontSize: 16, 
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 244, 67, 54),
        ),
      ),
      Text(
          'คำนวณหาแคลอรี่ที่ร่างกายต้องการ (BMR)',
          style: TextStyle(
            fontSize: 16, 
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 244, 67, 54),
        ),
      ),
      
          ]
      )
      )
    );
  }
}