import 'package:flutter/material.dart';

class WeatherListCard extends StatefulWidget {
  @override
  _WeatherListCardState createState() => _WeatherListCardState();
}

class _WeatherListCardState extends State<WeatherListCard> {
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
                    "Sunday",
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
                "26° / 11°",
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
                    'https://www.metaweather.com/static/img/weather/png/c.png',
                scale: 22,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
