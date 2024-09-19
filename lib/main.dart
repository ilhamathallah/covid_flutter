import 'package:covid_flutter/ui/hoax_screen.dart';
import 'package:covid_flutter/ui/home_screen.dart';
import 'package:covid_flutter/ui/hospital_screen.dart';
import 'package:covid_flutter/ui/login_screen.dart';
import 'package:covid_flutter/ui/news_screen.dart';
import 'package:covid_flutter/ui/register_screen.dart';
import 'package:flutter/material.dart';

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
        '/home' : (context) => HomeScreen(),
        '/news' : (context) => NewsScreen(),
        '/hospital' : (context) => HospitalScreen(),
        '/register' : (context) => RegisterScreen(),
        '/login' : (context) => LoginScreen(),
      },
    );
  }
}
