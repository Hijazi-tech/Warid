// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jd_project/constant.dart';
import 'package:jd_project/ui/screens/forgetpasswordScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String routName = '/LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.only(top: 22.0, right: 284, bottom: 1),
              child: Text(
                'User',
                style: TextStyle(color: kdarkacentColor, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 162,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8.0, right: 44, bottom: 5),
                        child: Text(
                          'Select Languege',
                          style: TextStyle(color: kdarkacentColor, fontSize: 10),
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(),
                        ),
                        child: Row(
                          children: [
                            Container(
                                height: 8,
                                width: 37,
                                color: kaorangeColor,
                                child: Center(
                                    child: Text(
                                  'ENG',
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 8),
                                ))),
                            Image(
                              image: AssetImage('images/img5.jpeg'),
                              height: 35,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 11,
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
              height: 11,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: kPurpleColor,
                decoration: InputDecoration(
                  fillColor: klightblueeColor,
                  filled: true,
                  labelText: 'password',
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
              height: 11,
            ),
            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, ForgetScreen.routName);
              },
              child: Text(
                'Forget Password?',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
            SizedBox(
              height: 31,
            ),
            Container(
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
                    'Login',
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

            SizedBox(
              height: 101,
            ),
            Text(
              'Don`t have any account? ',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Container(
              height: 40,
              width: 315,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(55),
                color: klgtColor,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 11,
                  ),
                  Text(
                    'Register',
                    style: TextStyle(color: kaorangeColor),
                  ),

                  SizedBox(width: 221,),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(105),
                      color: kaorangeColor,
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      size: 17,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
