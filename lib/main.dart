import 'package:flutter/material.dart';
import 'package:jd_project/routes.dart';
import 'package:jd_project/ui/screens/SplashScreen.dart';
import 'package:jd_project/ui/screens/forgetpasswordScreen.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routName,
      routes: routes,
    );
  }
}
