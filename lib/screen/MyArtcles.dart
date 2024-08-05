import 'package:feeds/screen/Discover_Page.dart';
import 'package:feeds/screen/Topwriter_openview.dart';
import 'package:feeds/widgets/Listview_container%20copy%202.dart';
import 'package:feeds/widgets/Listview_container%20copy.dart';
import 'package:feeds/widgets/Listview_container.dart';
import 'package:flutter/material.dart';

class MyArticles extends StatefulWidget {
  const MyArticles({super.key});

  @override
  State<MyArticles> createState() => _MyArticlesState();
}

class _MyArticlesState extends State<MyArticles>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int numberOfDrafts = 15;
  int numberOfPublished = 27;

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
        toolbarHeight: 65,
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
                size: 24,
                color: Color(0xFF39006F),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'My Articles',
              style: TextStyle(
                color: Color(0xFF39006F),
                fontSize: 19,
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
                Icons.more_vert,
                size: 24,
                color: Color.fromARGB(255, 174, 174, 174),
              ),
              onPressed: () {
                // Handle search button press
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          SizedBox(
            width: screenWidth * 0.888,
            child: TabBar(
              controller: _tabController,
              tabs:  [
                Tab(text: "Draft($numberOfDrafts)"),
                Tab(text: "Published($numberOfPublished)"),
              ],
              indicatorColor: const Color(0xFF414ECA),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: const Color(0xFF414ECA),
              unselectedLabelColor: const Color(0xFF6B6161),
              labelStyle: const TextStyle(
                color: Color(0xFF414ECA),
                fontSize: 12,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
              unselectedLabelStyle: const TextStyle(
                color: Color(0xFF6B6161),
                fontSize: 12,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),

          // TabBarView
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Drafts(),
                Published(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Drafts extends StatelessWidget {
  const Drafts({super.key});

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
                  ListContainer3(),
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

class Published extends StatelessWidget {
  const Published({super.key});

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
            itemCount: 27,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return const Column(
                children: [
                  ListContainer3(),
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
