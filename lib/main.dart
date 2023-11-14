import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inhacks_2023/widgets/properties.dart';
import 'splash.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
    );
  }
}
