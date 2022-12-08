import 'package:flutter/material.dart';

import './Screens/intro_screen.dart';
import './widgets/Tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Baze App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey,
        ).copyWith(
          secondary: Colors.white,
        ),
        textTheme: const TextTheme(
          titleSmall: TextStyle(
            fontSize: 18,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
      home: const IntroScreen(),
      routes: {
        Tabs.routeName: (context) => Tabs(),
      },
    );
  }
}
