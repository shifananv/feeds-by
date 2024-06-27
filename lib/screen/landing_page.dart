import 'package:feeds/screen/selection_confirmation.dart';
import 'package:feeds/widgets/category_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double margin = screenWidth * 0.055;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 64,
        title: const Text(
          'Preferences',
          style: TextStyle(
            color: Color(0xFF260446),
            fontSize: 19,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          iconSize: 22,
          color: const Color(0xFF260446),
          onPressed: () {},
        ),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(margin),
          width: screenWidth,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              SizedBox(
                width: screenWidth * 0.66,
                child: const Text(
                  'Select your topic of Interest🔖',
                  style: TextStyle(
                    color: Color(0xFF414ECA),
                    fontSize: 29,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: screenWidth * 0.74,
                child: const Text(
                  'Select topic of interest for better recommendations, or you can skip it',
                  style: TextStyle(
                    color: Color(0xFF414ECA),
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(height: 28),
              const ContainerScreen(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: 360,
        height: 101,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SelectionConfirmation()),
                );
              },
              child: Container(
                width: 132,
                height: 47,
                decoration: BoxDecoration(
                  color: const Color(0xFFC5CAF9),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    'Skip',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF414ECA),
                      fontSize: 15,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SelectionConfirmation()),
                );
              },
              child: Container(
                width: 132,
                height: 47,
                decoration: BoxDecoration(
                  color: Color(0xFF414ECA),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    'Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
