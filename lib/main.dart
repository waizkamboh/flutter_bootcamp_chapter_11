import 'package:chapter11/home_screen.dart';
import 'package:chapter11/screen_three.dart';
import 'package:chapter11/screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     // using routes
     initialRoute: HomeScreen.id,
     routes: {
        HomeScreen.id : (context) => const HomeScreen(),
       ScreenTwo.id : (context) => const ScreenTwo(),
       ScreenThree.id : (context) => const ScreenThree(),
     },
     // home: const HomeScreen(),// using navigator
    );
  }
}

