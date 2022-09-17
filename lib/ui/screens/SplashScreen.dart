// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jd_project/constant.dart';
import 'package:jd_project/ui/screens/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routName = "/SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  splashScreenDelay()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushNamed(context, LoginScreen.routName);
  }

  void initState(){
    super.initState();

    splashScreenDelay();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkblueColor,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset('images/img1.jpeg'),
              Positioned(
                bottom: 0,
                child: Image.asset('images/img3.jpeg'),
              ),
            ],
          ),
          SizedBox(
            height: 42,
          ),
          Image.asset('images/img2.jpeg',),
          SizedBox(
            height: 52,
          ),
          Text(
            'We make it easy \n       for you!',
            style: TextStyle(fontSize: 11, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
