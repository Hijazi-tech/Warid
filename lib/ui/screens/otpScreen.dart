// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jd_project/constant.dart';

import 'forgetpasswordScreen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);
  static String routName = "/OtpScreen";

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
                  padding: const EdgeInsets.only(left: 128.0, top: 91),
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
                        onPressed: () {
                          Navigator.pushNamed(context, ForgetScreen.routName);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 11,
                        ),
                        color: Colors.black,
                      ),
                    ),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 25, right: 22),
            child: Row(
              children: [
                Text.rich(
                  TextSpan(
                      text: 'User',
                      style: TextStyle(fontSize: 15, color: klightacentColor),
                      children: [
                        TextSpan(
                          text: '\nOTP',
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ]),
                ),
                SizedBox(
                  width: 222,
                ),
                Text(
                  '01:30',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 43,
          ),
          Text(
            'Enter OTP sent to you by your mobile',
            style: TextStyle(color: klightaccentColor, fontSize: 11),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: kPurpleColor,
              decoration: InputDecoration(
                fillColor: klightblueeColor,
                filled: true,
                labelText: 'Enter OTP here',
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
          SizedBox(height: 22,),
          Padding(
            padding: const EdgeInsets.only(left: 28.0,right: 22),
            child: Row(
              children: [
                Text(
                  'Change Number',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                SizedBox(width: 111,),

                Text(
                  'Sent Again',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 21,
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
