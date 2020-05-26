

import 'dart:convert';

import 'package:http/http.dart';

class Weather{

  int woeid;
  List<dynamic> weatherList;

  Weather({this.woeid});

  Future<void> getWeather() async{

    Response response = await get('https://www.metaweather.com/api/location/${this.woeid}/');
    Map weather = jsonDecode(response.body);
    this.weatherList = weather['consolidated_weather'];

  }

}