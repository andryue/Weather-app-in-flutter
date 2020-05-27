import 'dart:convert';

import 'package:http/http.dart';

class CountryInfo {
  String urlAddName;
  String title;
  String type;
  int woeid;


  List<dynamic> listOfCountries;

  CountryInfo({this.urlAddName});

  Future<void> getCountryInfo() async {
    try {
      Response response = await get(
          'https://www.metaweather.com/api/location/search/?query=$urlAddName');
      this.listOfCountries = jsonDecode(response.body);

      Map country = this.listOfCountries[0];
      this.title = country['title'];
      this.type = country['location_type'];
      this.woeid = country['woeid'];
    } catch (e) {
      this.title = "Country not found";
      this.type = "-";
      this.woeid = 0;
    }
  }
}
