import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/get_api/CountryInfo.dart';
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



  Map data = {};


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    CountryInfo countryInfo = data['country'];
    List<dynamic> weatherList = data['weather'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                "${countryInfo.title}, ${countryInfo.type}",
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 24.0,
                    fontFamily: 'Sergueui',
                    fontWeight: FontWeight.w600),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context,'/chooseCountry');
              },
              child: Container(
                child: Icon(
                  Icons.search,
                  color: Colors.grey[900],
                  size: 35.0,
                ),
              ),
            ),
            SizedBox(width: 1.0),
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
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0,0.0,0.0,0.0),
                      child: Text(
                        "${(weatherList[0]['the_temp']).toStringAsFixed(0)}°",
                        style: TextStyle(
                            fontSize: 100.0,
                            fontFamily: "Sergueui",
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 30.0, 0.0),
                    child: Image.network(
                      'https://www.metaweather.com/static/img/weather/png/${weatherList[0]['weather_state_abbr']}.png',
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
                            "${weatherList[0]['weather_state_name']} day",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.grey[900],
                                fontFamily: "Sergueui",
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "${(weatherList[0]['min_temp']).toStringAsFixed(0)}° / ${(weatherList[0]['max_temp']).toStringAsFixed(0)}°",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey[900],
                              fontFamily: "Sergueui",
                              fontWeight: FontWeight.w500),
                        ),
                      ],
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
                          "${(weatherList[0]['air_pressure']).toStringAsFixed(0)} hpa",
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
                          "${(weatherList[0]['humidity']).toStringAsFixed(0)} %  ",
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
                          "${(weatherList[0]['the_temp']).toStringAsFixed(0)}°   ",
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
                          "${(weatherList[0]['min_temp']).toStringAsFixed(0)}°      ",
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
                          "${(weatherList[0]['max_temp']).toStringAsFixed(0)}°",
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
                          "${(weatherList[0]['wind_speed']).toStringAsFixed(0)} mph",
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
                            "It's currently ${weatherList[0]['weather_state_name']}, maximum temperature is ${(weatherList[0]['max_temp']).toStringAsFixed(0)}°, minimum is ${(weatherList[0]['min_temp']).toStringAsFixed(0)}°",
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
                      "${ DateFormat('EEEE').format( DateTime.parse(weatherList[0]['applicable_date']))} - ",
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 21.0,
                          fontFamily: "Sergueui",
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                        "${DateFormat('d MMM').format( DateTime.parse(weatherList[0]['applicable_date']))} (Today)",
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
                      crossAxisCount: weatherList.length-1,
                  childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height)),
                  itemCount: weatherList.length-1,
                  itemBuilder: (context, index) {
                    return GridTile(
                      child: WeatherCard(weatherList[index+1]),
                    );
                  }),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,30.0,0.0,0.0),
                child: ListView.builder(itemBuilder: (context,index){
                    return WeatherListCard(weatherList[index+1]);
                  },
                  itemCount: weatherList.length-1,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true
                    ,
                  physics: const NeverScrollableScrollPhysics(),),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
