import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class WeatherCard extends StatelessWidget {

  final Map listOfWeathers;
  WeatherCard(this.listOfWeathers);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Text(
              "${(listOfWeathers['the_temp']).toStringAsFixed(0)}°",
              style: TextStyle(fontSize: 20.0,
              fontFamily: 'Sergueui',
              fontWeight: FontWeight.w600,
              color: Colors.grey[800]),
            ),
          ),
          Expanded(
              child: Image.network(
                  'https://www.metaweather.com/static/img/weather/png/${listOfWeathers['weather_state_abbr']}.png')),
          SizedBox(height: 20.0),
          Expanded(
            child: Text("${addZeroUnderTen(DateTime.parse(
                listOfWeathers['applicable_date']
            ).day)}.${addZeroUnderTen(DateTime.parse(
                listOfWeathers['applicable_date']
            ).month)}",
              style: TextStyle(fontSize: 17.0,
                  fontFamily: 'Sergueui',
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[700]),),
          )
        ],
      ),
    );
  }


  String addZeroUnderTen(int number) => number.toString().padLeft(2,'0');
}
