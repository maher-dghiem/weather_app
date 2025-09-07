import 'package:flutter/material.dart';
import 'package:weather_app/screens/home_page.dart';
import 'package:weather_app/screens/loading_screen.dart';
import 'package:weather_app/screens/searchScreen.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather App",
      routes: {'/' : (context) => LoadingScreen(),
      '/homePage' : (context) => HomePage(),
        '/searchScreen' : (context) => SearchScreen(),
      }
    );
  }
}

