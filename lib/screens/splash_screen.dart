import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kotak_cherry_demo/screens/about_page.dart';



class SplashScreen extends StatefulWidget{



  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => AboutPage()));
    });
  }
  @override
  Widget build(BuildContext context) {



    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image(
              image: AssetImage('assets/kotak_cherry.jpg'),
              width: 300,
            ),
            Container(
              width: 200,
              child: LinearProgressIndicator(),
            )

          ],
        ),
      ),

    );
  }
}
