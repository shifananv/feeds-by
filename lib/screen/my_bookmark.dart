import 'package:feeds/screen/home_page.dart';
import 'package:feeds/widgets/Listview_container.dart';
import 'package:feeds/widgets/article_banner.dart';
import 'package:flutter/material.dart';

class MyBookmark extends StatefulWidget {
  const MyBookmark({super.key});

  @override
  State<MyBookmark> createState() => _MyBookmarkState();
}

class _MyBookmarkState extends State<MyBookmark> {
  bool isIcon1Clicked = false; // Track if icon 1 is clicked
  bool isIcon2Clicked = false; // Track if icon 2 is clicked
  bool isGridMode = true; // Track current mode: grid or list

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    int articleCount = 10;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 64,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
               Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
              },
              child: const Icon(
                Icons.arrow_back,
                size: 22,
                color: Color(0xFF260446),
              ),
            ),
            const SizedBox(width: 4,),
            const Text(
              'My Bookmarks',
              style: TextStyle(
                color: Color(0xFF260446),
                fontSize: 16,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(
                Icons.search_rounded,
                size: 22,
                color: Colors.grey,
              ),
              onPressed: () {
                // Handle search button press
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Text(
                    '$articleCount Articles',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isIcon1Clicked = !isIcon1Clicked;
                        isIcon2Clicked = false;
                        isGridMode =
                            true; // Switch to grid view when icon 1 is clicked
                      });
                    },
                    child: Icon(
                      Icons.apps_rounded,
                      size: 25,
                      color: isIcon1Clicked
                          ? const Color(0xFF414ECA)
                          : Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isIcon2Clicked = !isIcon2Clicked;
                        isIcon1Clicked = false;
                        isGridMode =
                            false; // Switch to list view when icon 2 is clicked
                      });
                    },
                    child: Icon(
                      Icons.list_alt,
                      size: 25,
                      color: isIcon2Clicked
                          ? const Color(0xFF414ECA)
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              isGridMode
                  ? buildGridView()
                  : buildListView(), // Display grid or list based on current mode
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridView() {
    return GridView.count(
      mainAxisSpacing: 60,
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), // Disable grid scrolling
      children: List.generate(
        10,
        (index) => const ArticleBanner(
            title: '10 tips for Boosting your Productivity ...'),
      ),
    );
  }

  Widget buildListView() {
    return ListView.builder(
      itemCount: 6,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), 
      itemBuilder: (context, index) {
        return const Column(
          children: [
            ListContainer(),
            SizedBox(height: 20,)
          ],
        );
      },
    );
  }
}
