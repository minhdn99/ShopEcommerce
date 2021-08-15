import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopecommerce/screens/onboarding_screen.dart';
import 'package:shopecommerce/screens/login.dart';
import 'package:shopecommerce/screens/signuppage.dart';

class Start extends StatefulWidget {

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {

  final List<String> imgList = [
    "https://images.unsplash.com/photo-1556742502-ec7c0e9f34b1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZSUyMGNvbW1lcmNlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.pexels.com/photos/6613708/pexels-photo-6613708.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/9159701/pexels-photo-9159701.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/6347540/pexels-photo-6347540.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
  ];

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    double viewInset = MediaQuery.of(context).viewInsets.bottom;
    double defauldLoginSize = size.height - (size.height * 0.2);
    double defauldSignUpSize = size.height - (size.height * 0.1);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
            },
            icon: Icon(Icons.arrow_back)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Builder(
            builder: (context) {
              final double height = MediaQuery.of(context).size.height;
              return CarouselSlider(
                options: CarouselOptions(
                  height: height,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  // autoPlay: false,
                ),
                items: imgList
                    .map((item) => Container(
                  child: Center(
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        height: height,
                      )),
                ))
                    .toList(),
              );
            },
          ),
           Column(
             children: [
               Padding(
                 padding: const EdgeInsets.fromLTRB(8,80,8,8),
                 child: Text(
                   "SHOP",
                   style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 30,
                       color: Colors.white
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.fromLTRB(8,200,8,8),
                 child: Text(
                   "Get best product in shop",
                   style: TextStyle(
                       // fontWeight: FontWeight.bold,
                       fontSize: 20,
                       color: Colors.white
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.fromLTRB(8,120,8,8),
                 child: Column(
                    children: <Widget>[
                      // the login button
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                        // defining the shape
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.white
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18
                          ),
                        ),
                      ),
                      // creating the signup button
                      SizedBox(height:40),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));

                        },
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.white
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18
                          ),
                        ),
                      )

                    ],
                  ),
               ),
             ],
           ),

        ],
      ),
    );
  }
}
