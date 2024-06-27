import 'package:feeds/screen/home_page.dart';
import 'package:flutter/material.dart';

class SelectionConfirmation extends StatefulWidget {
  const SelectionConfirmation({super.key});

  @override
  State<SelectionConfirmation> createState() => _SelectionConfirmationState();
}

class _SelectionConfirmationState extends State<SelectionConfirmation> {
  
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double margin = screenWidth * 0.09;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(margin),
        width: screenWidth,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: screenWidth * 0.67,
            ),
            Container(
              width: 240,
              height: 160,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/one.gif'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'You’re all Set to Go!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF414ECA),
                fontSize: 20,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Now You Can Explore\n',
                    style: TextStyle(
                      color: Color(0xFF414ECA),
                      fontSize: 12,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: 'Feeds by ShareInfo',
                    style: TextStyle(
                      color: Color(0xFFEE5602),
                      fontSize: 12,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: ' for ',
                    style: TextStyle(
                      color: Color(0xFF414ECA),
                      fontSize: 12,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: 'FREE!',
                    style: TextStyle(
                      color: Color(0xFF8B8B8B),
                      fontSize: 12,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Container(
                width: 290,
                height: 47,
                decoration: ShapeDecoration(
                  color: const Color(0xFF414ECA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
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
