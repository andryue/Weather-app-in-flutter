import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseCountry extends StatefulWidget {
  @override
  _ChooseCountryState createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Choose your country"),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(35.0))
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0,15.0,20.0,15.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter country...',
                    icon: Icon(Icons.search,color: Colors.grey[700],size: 35.0,)
                  ),
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Sergueui'
                  ),
                )
              ),
            ),
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Divider(
                    height: 1.0,
                    color: Colors.grey[700],
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text(
                      'Warsaw, City',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey[900], fontSize: 22.0),
                    ),
                  ),
                  Divider(height: 1.0, color: Colors.grey[700]),
                ],
              );
            },
            itemCount: 20,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          ),
        ]),
      ),
    );
  }
}
