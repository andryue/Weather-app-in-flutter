import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/get_api/CountryInfo.dart';
import 'package:weatherapp/get_api/Weather.dart';

class ChooseCountry extends StatefulWidget {
  @override
  _ChooseCountryState createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
  List<dynamic> listOfFilterLocations = [];
  List<dynamic> listAllOfLocations = [];
  bool isNotClicked;
  @override
  void initState() {
    super.initState();
     isNotClicked = true;
    setState(() {
      listOfFilterLocations.clear();
      listAllOfLocations.clear();
    });
  }



  @override
  Widget build(BuildContext context) {



    Map map = ModalRoute.of(context).settings.arguments;

    listAllOfLocations = map['listOfCountries'];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Expanded(flex: 1, child: Text("Choose your country")),
            Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter country...',
                      hintStyle: TextStyle(
                          fontSize: 19.0,
                          color: Colors.white,
                          fontFamily: 'Sergueui',
                          fontWeight: FontWeight.w600),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 28.0,
                      )),
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Sergueui'),
                  onChanged: (str) => filterList(str),
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: isNotClicked ? () {

                setState(() {
                  isNotClicked = false;
                });

                final snackBar = SnackBar(
                    content: Text(
                  'Updating weather for ${listOfFilterLocations[index]['title']}...',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Sergueui',
                      fontWeight: FontWeight.w600),
                ));
                Scaffold.of(context).showSnackBar(snackBar);
                updateWeather(index);
              } : null ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Divider(
                    height: 1.0,
                    color: Colors.grey[700],
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text(
                      '${listOfFilterLocations[index]['title']}, ${listOfFilterLocations[index]['location_type']}',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey[900], fontSize: 22.0),
                    ),
                  ),
                  Divider(height: 1.0, color: Colors.grey[700]),
                ],
              ),
            );
          },
          itemCount: listOfFilterLocations.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }

  void filterList(String str) {
    setState(() {
      listOfFilterLocations.clear();
      for (Map i in listAllOfLocations) {
        if ((i['title']).toString().toLowerCase().contains(str.toLowerCase())) {
          listOfFilterLocations.add(i);
        }
      }
    });
  }

  void updateWeather(int index) async {
    CountryInfo info =
        CountryInfo(urlAddName: listOfFilterLocations[index]['title']);
    await info.getCountryInfo();
    info.listOfCountries = listAllOfLocations;

    Weather weather = Weather(woeid: info.woeid);
    await weather.getWeather();
    Navigator.pop(context, {'country': info, 'weather': weather.weatherList});
  }
}
