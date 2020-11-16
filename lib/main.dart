import 'package:flutter/material.dart';
import 'pages/splashscreen.dart';
// pages
import 'pages/homepage.dart';

//flutter pub global run peanut:peanut

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jonas Blendstrup Rasmussen',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: SplashScreen(),
      onGenerateRoute: _routes,
      debugShowCheckedModeBanner: false,
    );
  }
}

Route<dynamic> _routes(RouteSettings settings) {
  switch (settings.name) {
    case 'home':
      return PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => HomePage(),
        transitionDuration: Duration(seconds: 0),
      );
      break;
    default:
      return PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => HomePage(),
        transitionDuration: Duration(seconds: 0),
      );
  }
}
