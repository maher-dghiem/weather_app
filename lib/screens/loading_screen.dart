import 'package:flutter/material.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:flutter_animated_loadingkit/flutter_animated_loadingkit.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  Weather? weather;

  void tryFetching() async {
    WeatherService service = WeatherService();
    Weather weather =  await service.fetchWeather('London');
    if (!context.mounted) return;
    Navigator.pushReplacementNamed(context, '/homePage', arguments: weather);
  }

  @override
  void initState() {
    super.initState();
    tryFetching();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedLoadingSpinner(
          circleColor: Colors.black,
          circleRadius: 5.0,
          speed: Duration(seconds: 3),
        ),
      ),
    );;
  }
}
