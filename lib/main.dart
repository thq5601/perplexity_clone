import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perflexity/presentation/pages/home_page.dart';
import 'package:perflexity/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perflexity clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.submitButton),
        scaffoldBackgroundColor: AppColors.backgroundColor,
        textTheme: GoogleFonts.interTextTheme(
          ThemeData.dark().textTheme.copyWith(
            bodyMedium: const TextStyle(
              fontSize: 16,
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
