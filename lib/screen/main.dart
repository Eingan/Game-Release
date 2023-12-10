import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game_release/screen/splashscreen.dart';

import 'firebase_options.dart';
import 'login.dart';
import 'navigation.dart';
import 'register.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/home' : (context) => const Navigation(),
        '/login':(context) =>  const login(),
           '/register':(context) => const Register()
      },
    );
  }
}


