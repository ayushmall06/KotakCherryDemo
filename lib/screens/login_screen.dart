import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.blue,
        statusBarColor: Colors.blue,
      )
    );

    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/moutains.jpg'),
                    fit: BoxFit.cover,
                  ),

              ),
              alignment: Alignment.bottomCenter,

              child: Container(
                margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  height: 400,
                  width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(
                  color: Color(0x88FFFFFF),
                  borderRadius: BorderRadius.circular(18),
                ),


                child: Column(
                  
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),

                        ),
                        color: Colors.white,
                      ),
                      height: 120,
                      child: Column(
                        children: [
                          Center(
                            child: Image(
                              image: AssetImage('assets/kotak_cherry.jpg'),
                              width: 150,
                            ),

                          ),
                          Text(
                            'Investments with expert advice'
                          ),
                        ],
                      ),


                    ),
                    SizedBox(height: 40,),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 60,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(15),
                              ),
                            ),
                            width: 50,
                            height: 50,
                            child: Center(
                              child: Image(
                                image: AssetImage('assets/google.png'),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width - 110,
                            decoration: BoxDecoration(
                              color: Color(0x33000000),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(16),
                                bottomRight: Radius.circular(15),
                              ),

                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 15,
                                left: 28,
                              ),
                              child: Text(
                                'Continue With Google',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                                ),


                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20,),

                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 60,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(15),
                              ),
                            ),
                            width: 50,
                            height: 50,
                            child: Center(
                              child: Image(
                                image: AssetImage('assets/face.png'),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width - 110,
                            decoration: BoxDecoration(
                              color: Color(0x33000000),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(16),
                                bottomRight: Radius.circular(15),
                              ),

                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 15,
                                left: 28,
                              ),
                              child: Text(
                                'Continue With Facebook',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),


                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    Container(

                      width: MediaQuery.of(context).size.width - 60,
                      height: 60.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.white)),
                        onPressed: () {},
                        padding: EdgeInsets.all(10.0),
                        color: Color(0x00000000),
                        textColor: Colors.white,
                        child: Text("Or Continue with email",
                            style: TextStyle(fontSize: 15)),
                      ),
                    ),
                  ],
                ),
              )

            ),
            Container(
              width: MediaQuery.of(context).size.width,

              color: Color(0xFF033152),
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Follow us on',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.facebook_outlined, color:Color(0x99FFFFFF)),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Company',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'About KIAL',
                      style: TextStyle(
                          color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'About Kotak Cherry',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),


                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Quick Links',
                      style: TextStyle(
                          color: Color(0x99FFFFFF),
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Dreams',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Calculator',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),



                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Other Links',
                      style: TextStyle(
                          color: Color(0x99FFFFFF),
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Products Offerings',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Learn',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Invite Others',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),




                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Support',
                      style: TextStyle(
                          color: Color(0x99FFFFFF),
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'FAQs',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Feedback',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Write to us',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),


                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Policies',
                      style: TextStyle(
                          color: Color(0x99FFFFFF),
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Disclosure',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Security Tips',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),


                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Mutual fund investments are subject to market risks'
                          ', read all scheme related documents carefully.',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Investment in securities market are subject to market risks,'
                          'read all the related documents carefully before investing.',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'For any grievances/complaints, the customer can write to us at email'
                          'ID: say.hello@kotak.com',
                      style: TextStyle(
                        color: Color(0x99FFFFFF),
                        fontSize: 11,
                      ),
                    ),



                    Container(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
