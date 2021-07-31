import 'package:exchange_contact_app/tutorial/tutorial_screen.dart';
import 'package:flutter/material.dart';
import 'home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/tutorial' : (context) => TutorialScreen(),
      },
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Home(),
    );
  }
}