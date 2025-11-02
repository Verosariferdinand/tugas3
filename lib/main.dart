import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Tambahkan 'google_fonts' di pubspec.yaml
import 'screens/home_screen.dart';
import 'utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portal Universitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryBlue,
        scaffoldBackgroundColor: lightBackground, // Background utama
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryBlue,
          primary: primaryBlue,
          secondary: secondaryBlue,
          tertiary: accentYellow, // Kuning sebagai warna tersier/aksen
        ),
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme).copyWith(
          headlineSmall: const TextStyle(
            fontWeight: FontWeight.bold,
            color: primaryBlue,
            fontSize: 22,
          ),
          bodyLarge: const TextStyle(fontSize: 16, color: darkText),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryBlue,
          foregroundColor: Colors.white, // Warna teks di AppBar
          elevation: 2,
        ),
        cardTheme: const CardThemeData(
          color: Colors.white,
          elevation: 1,
          margin:const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          shape:const RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(const Radius.circular(12)),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}