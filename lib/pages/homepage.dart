import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
                  color: Colors.black,
                ),
          ),
          Text(
            'A work in progress... Check back soon!',
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Colors.black38,
                ),
          ),
        ],
      ),
    );
  }
}
