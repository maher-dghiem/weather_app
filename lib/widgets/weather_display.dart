import 'package:flutter/material.dart';
import 'package:weather_app/models/weather.dart';
class WeatherDisplay extends StatelessWidget {
  final Weather weather;

  const WeatherDisplay({super.key,required this.weather});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              'https://openweathermap.org/img/wn/${weather.iconCode}@2x.png',
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(height: 20),
          Text('Description: ${weather.description}', style: TextStyle(fontSize: 18)),
          Text('Temperature: ${weather.temperature}°C', style: TextStyle(fontSize: 18)),
          Text('Feels Like: ${weather.feelsLike}°C', style: TextStyle(fontSize: 18)),
          Text('Humidity: ${weather.humidity}%', style: TextStyle(fontSize: 18)),
          Text('Wind Speed: ${weather.windSpeed} km/h', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
