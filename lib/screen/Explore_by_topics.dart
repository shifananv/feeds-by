import 'package:feeds/screen/Discover_Page.dart';
import 'package:feeds/widgets/category_tile.dart';
import 'package:flutter/material.dart';

class ExploreByTopics extends StatefulWidget {
  const ExploreByTopics({super.key});

  @override
  State<ExploreByTopics> createState() => _ExploreByTopicsState();
}

class _ExploreByTopicsState extends State<ExploreByTopics> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 64,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DiscoverPage()));
              },
              child: const Icon(
                Icons.arrow_back,
                size: 22,
                color: Color(0xFF260446),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            const Text(
              'Explore by Topics',
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
                color: Color(0xFF414ECA),
              ),
              onPressed: () {
                // Handle search button press
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 700,
              child: ListView.builder(
                itemCount: 10, // Adjust the number of rows
                itemBuilder: (context, rowIndex) {
                  return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0), // Padding between rows
              child: Wrap(
                spacing: 10, // Horizontal spacing between items
                runSpacing: 0, // Vertical spacing between items
                children: List.generate(2, (colIndex) { // Adjust the number of columns
                  int index = rowIndex * 2 + colIndex;
                  return const Padding(
                    padding: EdgeInsets.only(left: 21.0),
                    child: CategoryTile(
                      articleNum: 100,
                      catName: 'AI',
                    ),
                  );
                }),
              ),
                  );
                },
              ),
            ),
            const SizedBox(height: 115,)
          ],
        ),
      ),
    );
  }
}
