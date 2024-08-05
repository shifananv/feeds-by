import 'package:feeds/screen/Discover_Page.dart';
import 'package:feeds/screen/Followers&following.dart';
import 'package:feeds/widgets/Listview_container%20copy.dart';
import 'package:feeds/widgets/Listview_container.dart';
import 'package:feeds/widgets/socialmedia.dart';
import 'package:feeds/widgets/userBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TopwriterOpenedview extends StatefulWidget {
  const TopwriterOpenedview({super.key});

  @override
  State<TopwriterOpenedview> createState() => _TopwriterOpenedviewState();
}

class _TopwriterOpenedviewState extends State<TopwriterOpenedview>
    with SingleTickerProviderStateMixin {
  bool isFollowing = false;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
                          builder: (context) => const DiscoverPage()));
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 22,
                  color: Color(0xFF260446),
                ),
              ),
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.logout_rounded,
                    size: 26,
                    color: Color(0xFF414ECA),
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 26,
                    color: Color(0xFF414ECA),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                  width: screenWidth * 0.888,
                  height: screenWidth * 0.138,
                  child: const UserBox()),
              Container(
                width: screenWidth * 0.888,
                height: 20,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF8B8B8B), // Change to your desired color
                      width: 0.50, // Thickness of the border
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: screenWidth * 0.888,
                height: 62,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF8B8B8B), // Change to your desired color
                      width: 0.50, // Thickness of the border
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: screenWidth * 0.191,
                      height: 40,
                      decoration: const BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Color(
                                0xFF8B8B8B), // Change to your desired color
                            width: 0.50, // Thickness of the border
                          ),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '12',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF414ECA),
                              fontSize: 19,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          Text(
                            'articles',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF6B6161),
                              fontSize: 11,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.316,
                      height: 40,
                      decoration: const BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Color(
                                0xFF8B8B8B), // Change to your desired color
                            width: 0.50, // Thickness of the border
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FollowersandFollowing()));
                            },
                            child: const Text(
                              '125',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF414ECA),
                                fontSize: 19,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                          const Text(
                            'following',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF6B6161),
                              fontSize: 11,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.230,
                      height: 40,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '12.3K',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF414ECA),
                              fontSize: 19,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          Text(
                            'followers',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF6B6161),
                              fontSize: 11,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screenWidth * 0.888,
                child: TabBar(
                  controller: _tabController,
                  tabs: const [
                    Tab(text: "Articles"),
                    Tab(text: "About"),
                  ],
                  indicatorColor: const Color(0xFF414ECA),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: const Color(0xFF414ECA),
                  unselectedLabelColor: const Color(0xFF6B6161),
                ),
              ),

              // TabBarView
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    ArticlesPage(),
                    AboutPage(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
            itemCount: 12,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return const Column(
                children: [
                  ListContainer2(),
                  SizedBox(
                    height: 20,
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: screenWidth * 0.055),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Description',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: screenWidth * 0.888,
            child: const Text(
              'A UI/UX designer is the mastermind behind the scenes of the digital products you use every day, ensuring they are not only visually appealing but also functional and enjoyable to use. They bridge the gap between the technical aspects and the user experience, considering both the aesthetics and the usability.',
              style: TextStyle(
                color: Color(0xFF8B8B8B),
                fontSize: 11,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: screenWidth * 0.888,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.50,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFF8B8B8B),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: screenWidth * 0.888,
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Social Media',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const SocialMedialist();
                  },
                ),
              ],
            ),
          ),
          Container(
            width: screenWidth * 0.888,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.50,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFF8B8B8B),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          SizedBox(
            width: screenWidth * 0.888,
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'More Info',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const SocialMedialist();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
