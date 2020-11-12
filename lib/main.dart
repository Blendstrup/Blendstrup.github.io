import 'package:flutter/material.dart';

//flutter pub global run peanut:peanut

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jonas Blendstrup Rasmussen',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Jonas Blendstrup Rasmussen',
            style: Theme.of(context).textTheme.headline3.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            'A work in progress... Check back soon!',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
