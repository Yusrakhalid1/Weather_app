import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_model.dart';


class WeatherAPI_controller{
  Future<Weather>?  current_weather(String? location) async{
    var endpoint = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$location&appid=ffb6cde73a92686ecf58bcb3e7666f68&units=metrics');
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    Weather weather = Weather.fromJson(body);
    print(Weather.fromJson(body).cityname);
    return Weather.fromJson(body);
  }
}