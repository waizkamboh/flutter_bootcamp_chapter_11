
import 'package:chapter11/home_screen.dart';
import 'package:chapter11/screen_three.dart';
import 'package:chapter11/screen_two.dart';
import 'package:chapter11/util/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.homeScreen:
      return MaterialPageRoute(builder: (context)=> const HomeScreen());
      case RouteName.screenTwo:
        return MaterialPageRoute(builder: (context)=> const ScreenTwo());
      case RouteName.screenThree:
        return MaterialPageRoute(builder: (context)=> const ScreenThree());
      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });

    }

  }
}