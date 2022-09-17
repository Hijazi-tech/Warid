
import 'package:flutter/material.dart';
import 'package:jd_project/ui/screens/SplashScreen.dart';
import 'package:jd_project/ui/screens/forgetpasswordScreen.dart';
import 'package:jd_project/ui/screens/loginScreen.dart';

import 'ui/screens/otpScreen.dart';

 final Map<String, WidgetBuilder> routes= {

  SplashScreen.routName:(context) => SplashScreen(),
  LoginScreen.routName: (context) => LoginScreen(),
  ForgetScreen.routName: (context) => ForgetScreen(),
  OtpScreen.routName: (context) => OtpScreen(),



 };

