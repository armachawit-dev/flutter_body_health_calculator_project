import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_project_1/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(flutter_body_health_calculator_project_1());
}

class flutter_body_health_calculator_project_1 extends StatefulWidget {
  const flutter_body_health_calculator_project_1({super.key});

  @override
  State<flutter_body_health_calculator_project_1> createState() => _flutter_body_health_calculator_project_1State();
}

class _flutter_body_health_calculator_project_1State extends State<flutter_body_health_calculator_project_1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_screen_ui(),
       theme: ThemeData(
        textTheme: GoogleFonts.mitrTextTheme(),
      ),
    );
    
    
  }
}