import 'package:file_structure/feuture/splash/screen/splash.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'File Structure',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const  Splash(),
    );
  }
}