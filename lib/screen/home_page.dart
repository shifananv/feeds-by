import 'package:feeds/screen/Discover_Page.dart';
import 'package:feeds/screen/create_new.dart';
import 'package:feeds/screen/my_bookmark.dart';
import 'package:feeds/widgets/article_slider.dart';
import 'package:feeds/widgets/home_explore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> frametitles = [
    'Recent Articles',
    'Your Published Articles',
    'On Your Bookmarks',
  ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 90,
        titleSpacing: -7,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.07),
              child: const Text(
                'Feeds by',
                style: TextStyle(
                  color: Color(0xFF077AD7),
                  fontSize: 11,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.07),
              child: const Text(
                'ShareInfo',
                style: TextStyle(
                  color: Color(0xFFEE5602),
                  fontSize: 15,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w800,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CreateNew()),
                  );
                },
                icon: const Icon(
                  Icons.add,
                  color: Color(0xFF414ECA),
                  size: 22,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DiscoverPage()),
                  );
                },
                icon: const Icon(
                  Icons.explore_outlined,
                  color: Color(0xFF414ECA),
                  size: 22,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Color(0xFF414ECA),
                  size: 22,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.style_outlined,
                  color: Color(0xFF414ECA),
                  size: 22,
                ),
              ),
              SizedBox(
                width: screenWidth * 0.0111,
              )
            ],
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 555,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 3),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: ArticleSlider(
                        content:
                            'Embarking on a journey to join a first-tier multinational corporation (MNC) straight out of your institute is an aspiration shared by many ambitious individuals. These prestigious organizations offer not Embarking on a journey to join a first-tier multinational corporation (MNC) straight out of your institute is an aspiration shared by many ambitious individuals. These prestigious...',
                        author: 'James Hok',
                        title:
                            'Embarking on a journey to join a first-tier multinational corporation (MNC) straight out  ',
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: frametitles.map((title) {
                  int index = frametitles.indexOf(title);
                  return HomeExplore(
                    frametitle: title,
                    onTap: () {
                      switch (index) {
                        case 0:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyBookmark()),
                          );
                          break;
                        case 1:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyBookmark()),
                          );
                          break;
                        case 2:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyBookmark()),
                          );
                          break;
                      }
                    },
                  );
                }).toList(),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 167,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'We’re Working to expand ',
                            style: TextStyle(
                              color: Color(0xFF8B8B8B),
                              fontSize: 20,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'feeds!',
                            style: TextStyle(
                              color: Color(0xBF414ECA),
                              fontSize: 20,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '🧡 from ',
                          style: TextStyle(
                            color: Color(0xFF8B8B8B),
                            fontSize: 10,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'ShareInfo',
                          style: TextStyle(
                            color: Color(0xFFF09A6A),
                            fontSize: 10,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Color(0x7F8B8B8B),
                            fontSize: 10,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'community team',
                          style: TextStyle(
                            color: Color(0xFF8B8B8B),
                            fontSize: 10,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
