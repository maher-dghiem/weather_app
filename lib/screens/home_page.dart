import 'package:flutter/material.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/widgets/buildWeatherBackground.dart';
import 'package:weather_app/widgets/weather_display.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final weather = ModalRoute.of(context)!.settings.arguments as Weather;
    return Scaffold(
      appBar: AppBar(
        title: Text(weather.city),
        backgroundColor: Colors.grey[100],
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search city',
            onPressed: () {
              Navigator.pushNamed(
                context, '/searchScreen'
              );
            },
          ),
        ],

      ),
      body: Stack(
        children: [
          buildWeatherBackground(weather.description),
          SafeArea(
            child: WeatherDisplay(weather: weather),
          ),
        ],
      ),
    );
  }
}
