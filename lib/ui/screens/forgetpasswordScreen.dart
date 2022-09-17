// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jd_project/constant.dart';
import 'package:jd_project/ui/screens/loginScreen.dart';
import 'package:jd_project/ui/screens/otpScreen.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({Key? key}) : super(key: key);
  static String routName = "/ForgetScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Stack(
            children: [
              Container(
                height: 163,
                width: double.infinity,
                color: kdarkacentColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 128.0,top: 91),
                  child: Text(
                    'LOGO',
                    style: TextStyle(color: Colors.white, fontSize: 33),
                  ),
                ),
              ),

              Positioned(
                  top: 61,
                  left: 31,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(105),
                      color: Colors.white,
                    ),

                    child: Center(
                      child: IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, LoginScreen.routName);
                        },
                        icon: Icon(Icons.arrow_back,size: 11,),
                        color: Colors.black,

                      ),
                    ),
                  )),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 269, bottom: 1),
            child: Text(
              'User',
              style: TextStyle(color: kdarkacentColor, fontSize: 18),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 104, bottom: 11),
            child: Text(
              'Forgot Password',
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: kPurpleColor,
              decoration: InputDecoration(
                fillColor: klightblueeColor,
                filled: true,
                labelText: 'Mobile Number',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: klightacentColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: klightacentColor)),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: klightacentColor),
                ),
              ),
            ),
          ),


          SizedBox(
            height: 41,
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, OtpScreen.routName);
            },
            child: Container(
              height: 40,
              width: 315,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(55),
                color: kdarkacentColor,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 11,
                  ),
                  Text(
                    'Next',
                    style: TextStyle(color: Colors.white),
                  ),

                  SizedBox(width: 231,),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(105),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      size: 17,
                      color: kdarkacentColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
