import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeatherListCard extends StatelessWidget {

  final Map listOfWeathers;
  WeatherListCard(this.listOfWeathers);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(22.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5.0,0.0,5.0,0.0),
                  child: Text(
                    "${
                        DateFormat('EEEE').format( DateTime.parse(listOfWeathers['applicable_date']))
                    }",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Sergueui"
                    ),
                  ),
                ),
              ),
              Text(
                "${(listOfWeathers['max_temp']).toStringAsFixed(0)}° / ${(listOfWeathers['min_temp']).toStringAsFixed(0)}°",
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Sergueui"
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0,0.0,15.0,0.0),
                child: Image.network(
                    'https://www.metaweather.com/static/img/weather/png/${(listOfWeathers['weather_state_abbr'])}.png',
                scale: 22,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
