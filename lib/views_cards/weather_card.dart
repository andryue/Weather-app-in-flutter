import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Text(
              "19°",
              style: TextStyle(fontSize: 20.0,
              fontFamily: 'Sergueui',
              fontWeight: FontWeight.w600,
              color: Colors.grey[800]),
            ),
          ),
          Expanded(
              child: Image.network(
                  'https://www.metaweather.com/static/img/weather/png/c.png')),
          SizedBox(height: 20.0),
          Expanded(
            child: Text("12.05",
              style: TextStyle(fontSize: 17.0,
                  fontFamily: 'Sergueui',
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[700]),),
          )
        ],
      ),
    );
  }
}
