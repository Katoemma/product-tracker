import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/components/buttons.dart';
import 'package:mobile_app/components/images.dart';
import 'package:mobile_app/utilities/constants.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int screenNumber = 1;

  List<String> headers = [
    "Dive into the heart of our charcoal-making process. Monitor every step, from raw materials to finished product.",
    "Keep track of your inventory and manage your inventory levels with ease. Stay on top of your supplies and ensure optimal efficiency.",
    "Easily connect with your customers and streamline your sales process. Increase customer engagement and boost your bottom line.",
  ];

  //method to next screen
  void nextScreen() {
    setState(() {
      if (screenNumber < headers.length) {
        screenNumber++;
      } else {
        screenNumber = 1;
      }
    });
  }

  // Add more text fields as needed
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: height * 0.01, bottom: height * 0.01),
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CirCularImage(imgUrl: 'images/Charcoal-$screenNumber.png'),
              Container(
                padding: EdgeInsets.all(width * 0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      headers[screenNumber - 1],
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    // carousel indicators
                    Container(
                      margin: EdgeInsets.only(top: height * 0.04),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: height * 0.009,
                            width: width * 0.025,
                            decoration: BoxDecoration(
                              color: screenNumber == 1
                                  ? primaryColor
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: width * 0.02),
                          Container(
                            height: height * 0.009,
                            width: width * 0.025,
                            decoration: BoxDecoration(
                              color: screenNumber == 2
                                  ? primaryColor
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: width * 0.02),
                          Container(
                            height: height * 0.009,
                            width: width * 0.025,
                            decoration: BoxDecoration(
                              color: screenNumber == 3
                                  ? primaryColor
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              if (screenNumber == 1 || screenNumber == 2)
                Container(
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            color: subTextColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          nextScreen();
                        },
                        child: SizedBox(
                          height: height * 0.05,
                          width: width * 0.05,
                          child: Container(
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              //GET STARTED BUTTON

              if (screenNumber == 3)
                GreenButton(
                  labelText: 'Get Started',
                  onPressed: () {},
                ),
            ],
          ),
        ),
      ),
    );
  }
}
