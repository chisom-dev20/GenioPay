// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:geniopay/home_screen.dart';

import 'global_variables.dart';
import 'intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}



class SplashScreen extends StatefulWidget {

  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen>
{

  List data = [];

  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(seconds: 1),() {
     Navigator.pushReplacement(context, 
        MaterialPageRoute(builder: (context) => IntroPage()));
      },
    );
  }



  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
          height: height,
          width: width,
          child: Center(child: logo(100, 120),
            ),
        ),
    );
  }
}
