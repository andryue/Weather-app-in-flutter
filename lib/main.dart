import 'package:flutter/material.dart';
import 'package:weatherapp/ui/choose_country.dart';
import 'package:weatherapp/ui/home.dart';
import 'package:weatherapp/ui/loading_data.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/loadingData',
    routes:{
      '/loadingData':(context)=> LoadingData(),
      '/home':(context)=> Home(),
      '/chooseCountry':(context)=> ChooseCountry()
    },
  ));
}
