import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:weather_app/models/weather.dart';

class WeatherService {
  Future<Weather> fetchWeather(String city) async {
    final url = "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=662dc35a03450762c048327e08f12c4e&units=metric";
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return Weather.fromJson(data);
    } else {
      throw Exception("Failed to load weather data");
    }
  }
}