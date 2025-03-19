import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'home_page.dart';
// Import your home screen

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.off(() => HomeScreen()); // Navigate to HomeScreen after 3 sec
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Colors.white,
          ),

          // Background Image
          Image.asset(
            'assets/images/bg1.png',  // Your background image
            fit: BoxFit.cover,
          ),

          // Overlay content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/txt1.png',
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
                SizedBox(height: 2), // Decreased gap by 1.5 times (10 / 1.5 = 6.67)
                Image.asset(
                  'assets/images/splash_logo.png',
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width * 1,
                ),
                SizedBox(height: 20), // Increased gap before the third image
                Image.asset(
                  'assets/images/txt2.png',
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                SizedBox(height: 30), // Increased gap before the button
                ElevatedButton(
                  onPressed: () {
                    // Button Action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // Rounded Border
                    ),
                    elevation: 15, // Soft shadow effect
                    shadowColor: Colors.black.withOpacity(0.3), // Blur effect
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}