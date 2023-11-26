import 'package:flutter/material.dart';
import 'splashscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: SplashScreen(),
    );
  }
}


