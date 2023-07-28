import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tuts App',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: const Home(),
    );
  }
}
