import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kotak_cherry_demo/screens/login_screen.dart';

class AboutPage extends StatefulWidget {


  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {


  var pages = [
    PageViewModel(
      title: "One place to invest in them all",
      body: "You know what they say about putting all your legs in one basket? They "
          "are right, and it's the holy grail of winning at investing.",
      image: Center(child: Image.asset("assets/kotak_cherry.jpg", height: 175.0)),
      decoration: const PageDecoration(
        imagePadding: EdgeInsets.only(bottom: 5),

        pageColor: Colors.white,
        bodyTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 14,

        ),
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold
        ),
        bodyFlex: 4,

        imageFlex: 2
      ),
    ),
    PageViewModel(
      title: "Know where exactly to invest",
      body: "Cherry's advisory tells you exactly where to invest and how much. No more guessing.",
      image: Center(child: Image.asset("assets/kotak_cherry.jpg", height: 175.0)),
      decoration: const PageDecoration(
          imagePadding: EdgeInsets.only(bottom: 5),

          pageColor: Colors.white,
          bodyTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 14,

          ),
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),
          bodyFlex: 4,

          imageFlex: 2
      ),
    ),
    PageViewModel(
      title: "Pursue your dreams, not just numbers",
      body: "That's why Cherry asks you: What dreams do you wish to pursue and how much money will you need to help achieve them?",
      image: Center(child: Image.asset("assets/kotak_cherry.jpg", height: 175.0)),
      decoration: const PageDecoration(
          imagePadding: EdgeInsets.only(bottom: 5),

          pageColor: Colors.white,
          bodyTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 14,

          ),
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),
          bodyFlex: 4,

          imageFlex: 2
      ),
    ),
    PageViewModel(
      title: "Know when to save move your money",
      body: "Cherry monitors your portfolio 24x7, sending timely alerts on when to sell or swap your investments.",
      image: Center(child: Image.asset("assets/kotak_cherry.jpg", height: 175.0)),
      decoration: const PageDecoration(
          imagePadding: EdgeInsets.only(bottom: 5),

          pageColor: Colors.white,
          bodyTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 14,

          ),
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),
          bodyFlex: 4,

          imageFlex: 2
      ),
    ),
    PageViewModel(
      title: "Hold or sell, who will tell?",
      body: "Whether you use Cherry to invest, or use something else, you can always trust Cherry to provide expert advice on how to manage your investments.",
      image: Center(child: Image.asset("assets/kotak_cherry.jpg", height: 175.0)),
      decoration: const PageDecoration(
          imagePadding: EdgeInsets.only(bottom: 5),

          pageColor: Colors.white,
          bodyTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 14,

          ),
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),
          bodyFlex: 4,

          imageFlex: 2
      ),
    ),
    PageViewModel(
      title: "Cherry-picked investments at your fingertips",
      body: "Handpicked investments for you to consider. Curated and updated by Kotak's expert advisors.",
      image: Center(child: Image.asset("assets/kotak_cherry.jpg", height: 175.0)),
      decoration: const PageDecoration(
          imagePadding: EdgeInsets.only(bottom: 5),

          pageColor: Colors.white,
          bodyTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 14,

          ),
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),
          bodyFlex: 4,

          imageFlex: 2
      ),
    ),


   ];

  bool debug = true;
  @override
  Widget build(BuildContext context) {

    int current = 1;


    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: pages,
          onDone: () {
            // When done button is press
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                )
            );
          },
          onSkip: () {
            // You can also override onSkip callback
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                )
            );
          },
          showSkipButton: debug,
          onChange: (page) {

              if(page == 5)
                {
                 setState(() {
                   debug = false;
                 });
                }
              else{
                setState(() {
                  debug = true;
                });
              }
              print(debug);


          },
          skip: const Text("Skip", style: TextStyle(fontWeight: FontWeight.w600)),
          next: const Icon(Icons.arrow_right),
          done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
          showDoneButton: debug,
          globalFooter: (!debug)?Container(
            margin: EdgeInsets.only(bottom: 20),

            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen()
                  )
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF033152),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20)
              ),
              child: Text(
                'Getting Started',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ):Container(),
          isProgress: debug,


          dotsDecorator: DotsDecorator(

              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              activeColor: Colors.deepOrange,
              color: Colors.black26,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)
              )
          ),
        ),
      ),

    );
  }
}
