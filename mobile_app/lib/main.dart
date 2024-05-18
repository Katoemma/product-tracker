import 'package:flutter/material.dart';
import 'package:mobile_app/screens/onBoarding.dart';
import 'package:mobile_app/utilities/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        focusColor: Colors.white,
        cardColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        focusColor: Colors.grey[900]?.withOpacity(0.5),
        colorScheme: ColorScheme.fromSeed(
          primary: primaryColor,
          secondary: subTextColor,
          seedColor: primaryColor,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: const OnBoardingScreen(),
    );
  }
}
