import 'package:covid_flutter/ui/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:covid_flutter/ui/home_screeen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19 API',
      home: HomeScreen(),
      routes: {
        '/news' : (context) => NewsScreen(),
      },
    );
  }
}
