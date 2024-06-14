import 'package:flutter/material.dart';
import 'package:flutterify/utils/constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Variable for get the size of screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: backgroundColor1,
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            // Top Images Section
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: size.height * 0.5,
                width: size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: primaryColor,
                  image: DecorationImage(
                    image: AssetImage('assets/images/app_hamburger.png'),
                  ),
                ),
              ),
            ),

            // Midle Description Section
            Positioned(
              top: size.height * 0.58,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  Text(
                    'Discover your\nFavorite food here!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 39,
                      color: textColor1,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 35),
                  Text(
                    'Explore all the most popular \nfood and drink based on your interest.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: textColor2,
                    ),
                  ),
                  SizedBox(height: size.height * 0.07),

                  // Button group section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [primaryColor, buttonColor],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.05),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: const Offset(0, -1),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your desired functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.transparent,
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent, // No shadow directly from the button
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: EdgeInsets.zero, // Remove padding so the container's padding is used
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
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
