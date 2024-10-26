import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watch_store/component/my_colors.dart';
import 'package:watch_store/view/home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: SolidColors.backgroundColor,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: SolidColors.backgroundColor,
    systemNavigationBarIconBrightness: Brightness.light,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontFamily: 'dana',
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: SolidColors.whiteColor,
          ),
          titleLarge: TextStyle(
            fontFamily: 'dana',
            fontSize: 30,
            fontWeight: FontWeight.normal,
            color: SolidColors.whiteColor,
          ),
          labelSmall: TextStyle(
            fontFamily: 'dana',
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: SolidColors.whiteColor,
          ),
          labelMedium: TextStyle(
            fontFamily: 'dana',
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: SolidColors.titleColor,
          ),
          displayLarge: TextStyle(
            fontFamily: 'dana',
            fontWeight: FontWeight.normal,
            fontSize: 30,
            color: SolidColors.titleColor,
          ),
          labelLarge: TextStyle(
            fontFamily: 'dana',
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: SolidColors.whiteColor,
          ),
          headlineLarge: TextStyle(
            fontFamily: 'dana',
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: SolidColors.backgroundColor,
          ),
          headlineMedium: TextStyle(
            fontFamily: 'dana',
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: SolidColors.backgroundColor,
          ),
          headlineSmall: TextStyle(
            fontFamily: 'dana',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: SolidColors.backgroundColor,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'dana',
            fontSize: 48,
            fontWeight: FontWeight.w400,
            color: SolidColors.posterTextColor,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
