import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/views/intro_views/on_boarding_sc.dart';
import 'package:lottie/lottie.dart';

import '../../core/routing.dart';
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 5), () {
      navgateWithReplac(context, OnboardingScreen());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Lottie.asset('assets/splash.json'),
      SizedBox(height: 20,),
      Text('VAST',
        style: TextStyle(
          fontSize: 70.0,
          color: Colors.black,
          fontWeight: FontWeight.w500,
          letterSpacing: 2.5,
        ),
      ) ,
      SizedBox(height: 10,),

    ],
  ),
),
    );
  }
}
