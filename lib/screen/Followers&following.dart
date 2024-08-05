import 'package:feeds/screen/Discover_Page.dart';
import 'package:feeds/screen/Search.dart';
import 'package:feeds/screen/Topwriter_openview.dart';
import 'package:feeds/widgets/topwriter_widget.dart';
import 'package:feeds/widgets/userBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FollowersandFollowing extends StatefulWidget {
  const FollowersandFollowing({super.key});

  @override
  State<FollowersandFollowing> createState() => _FollowersandFollowingState();
}

class _FollowersandFollowingState extends State<FollowersandFollowing> {
  List<String> imagePaths = [
    'assets/images/profile.png',
    'assets/images/profile.png',
    'assets/images/profile.png',
    'assets/images/profile.png',
    'assets/images/profile.png',
    'assets/images/profile.png',
    'assets/images/profile.png',
    'assets/images/profile.png',
    'assets/images/profile.png',
    'assets/images/profile.png',
    'assets/images/profile.png',
    'assets/images/profile.png',
    'assets/images/profile.png',
    'assets/images/profile.png',
    'assets/images/profile.png',
  ];
  List<String> names = [
    'James Hok',
    'Jane Doe',
    'John Smith',
    'Emily Clark',
    'Michael Brown',
    'James Hok',
    'Jane Doe',
    'John Smith',
    'Emily Clark',
    'Michael Brown',
    'James Hok',
    'Jane Doe',
    'John Smith',
    'Emily Clark',
    'Michael Brown',
  ];
  List<String> descriptions = [
    'UIUX Designer at Google',
    'Frontend Developer at Facebook',
    'Backend Engineer at Amazon',
    'Product Manager at Netflix',
    'Data Scientist at Apple',
    'UIUX Designer at Google',
    'Frontend Developer at Facebook',
    'Backend Engineer at Amazon',
    'Product Manager at Netflix',
    'Data Scientist at Apple',
    'UIUX Designer at Google',
    'Frontend Developer at Facebook',
    'Backend Engineer at Amazon',
    'Product Manager at Netflix',
    'Data Scientist at Apple',
  ];
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 90,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TopwriterOpenedview()));
              },
              child: const Icon(
                Icons.arrow_back,
                size: 22,
                color: Color(0xFF260446),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchScreen()));
              },
              child: const Icon(
                Icons.search_sharp,
                size: 26,
                color: Color(0xFF414ECA),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * 0.403,
                    height: 40,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFF414ECA)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Followers',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF414ECA),
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.055,
                  ),
                  Container(
                    width: screenWidth * 0.403,
                    height: 40,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF404DC7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Following',
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
                  )
                ],
              ),
              const SizedBox(
                height: 29.5,
              ),
              ListView.builder(
                itemCount: 15,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return const Column(
                    children: [
                      UserBox(),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
