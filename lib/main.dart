import 'package:flutter/material.dart';
import 'package:depan/views/gender_select.dart';
import 'package:depan/views/age_select.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          unselectedWidgetColor: Colors.deepOrangeAccent,
      ),
        home: Scaffold(
          backgroundColor: Colors.white,
          body: GenderSelect(),

        ),
      );
  }
}

