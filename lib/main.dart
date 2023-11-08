import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inhacks_2023/app_scaffold.dart';
import 'package:inhacks_2023/home.dart';
import 'splash.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SecondWave',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
    );
  }
}
