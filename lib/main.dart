import 'package:flutter/material.dart';
import 'package:quiz/core/theme/application_theme.dart';
import 'package:quiz/home_layout/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName : (context) => const HomeLayout(),
      },
      theme: ApplicationTheme.theme,
    );
  }

}