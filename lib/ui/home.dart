import 'package:flutter/material.dart';
import 'file:///C:/Users/ideapad/Desktop/Programowanie/flutter/weather_app/lib/ui/custom_icons_icons.dart';
import 'file:///C:/Users/ideapad/Desktop/Programowanie/flutter/weather_app/lib/views_cards/weather_card.dart';

import '../views_cards/weather_list_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> listOfStrings = ["edefewfe","2rewewfefef","defffefewf","wefwfweefwfw","ewffeewfwefw","ewfewefewfewfw","wefewnfhuew",
    "edefewfe","2rewewfefef","defffefewf","wefwfweefwfw","ewffeewfwefw","ewfewefewfewfw","wefewnfhuew"];


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                "Sydney, City",
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 24.0,
                    fontFamily: 'Sergueui',
                    fontWeight: FontWeight.w600),
              ),
            ),
            Icon(
              Icons.search,
              color: Colors.grey[900],
              size: 35.0,
            ),
            SizedBox(width: 15.0),
            Icon(
              Icons.apps,
              color: Colors.grey[900],
              size: 35.0,
            ),
            SizedBox(width: 5.0),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "19°",
                      style: TextStyle(
                          fontSize: 100.0,
                          fontFamily: "Sergueui",
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 30.0, 0.0),
                    child: Image.network(
                      'https://www.metaweather.com/static/img/weather/png/c.png',
                      scale: 6,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(12.0, 0.0, 20.0, 0.0),
                          child: Text(
                            "Sunny day",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.grey[900],
                                fontFamily: "Sergueui",
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "26° / 11°",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey[900],
                              fontFamily: "Sergueui",
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: Text(
                      "Feels Like 21°",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.grey[900],
                          fontFamily: "Sergueui",
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          CustomIcons.air,
                          color: Colors.blue,
                          size: 28.0,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          "17°",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontFamily: "Sergueui",
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          CustomIcons.water,
                          color: Colors.blue,
                          size: 28.0,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          "17°",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontFamily: "Sergueui",
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          CustomIcons.temperatire,
                          color: Colors.blue,
                          size: 28.0,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          "17°",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontFamily: "Sergueui",
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          CustomIcons.temperature_low,
                          color: Colors.blue,
                          size: 28.0,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          "17°",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontFamily: "Sergueui",
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          CustomIcons.temperature_high,
                          color: Colors.blue,
                          size: 28.0,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          "17°",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontFamily: "Sergueui",
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          CustomIcons.wind,
                          color: Colors.blue,
                          size: 28.0,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          "17°",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontFamily: "Sergueui",
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.album,
                          color: Colors.green[500],
                        ),
                        margin: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 0.0),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 40.0, 0.0),
                          child: Text(
                            "It's currently cloudy, 19 and the sun sets in 7 hours",
                            maxLines: 2,
                            softWrap: true,
                            style:
                                TextStyle(fontSize: 20.0, fontFamily: "Sergueui"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                shadowColor: Colors.grey[800],
                elevation: 4.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Friday - ",
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 21.0,
                          fontFamily: "Sergueui",
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "03 Jan (Today)",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 21.0,
                        fontFamily: "Sergueui",
                      ),
                    )
                  ],
                ),
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6,
                  childAspectRatio: MediaQuery.of(context).size.width/ (MediaQuery.of(context).size.height)),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return GridTile(
                      child: WeatherCard(),
                    );
                  }),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,30.0,0.0,0.0),
                child: Column(
                  children: listOfStrings.map((e) => WeatherListCard()).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
