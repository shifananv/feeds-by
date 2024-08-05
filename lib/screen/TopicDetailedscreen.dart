import 'package:feeds/screen/Discover_Page.dart';
import 'package:feeds/widgets/Listview_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TopicDetailedScreen extends StatefulWidget {
  const TopicDetailedScreen({super.key});

  @override
  State<TopicDetailedScreen> createState() => _TopicDetailedScreenState();
}

class _TopicDetailedScreenState extends State<TopicDetailedScreen> {
  String selectedSortOption = 'Default'; // Track the selected sorting option
  List<String> sortOptions = [
    'Option 1',
    'Option 2',
    'Option 3'
  ]; // List of sorting options
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
            const SizedBox(
              width: 4,
            ),
            const Text(
              'Artificial Intelligence',
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
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Stack(
                  children: [
                    Container(
                      width: screenWidth * 0.888,
                      height: 150,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/wide.png"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const Positioned(
                        top: 105,
                        left: 20,
                        child: Text(
                          'Artificial Intelligence',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Sort by',
                      style: TextStyle(
                        color: Color(0xFF260446),
                        fontSize: 14,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      width: 230,
                    ),
                    const SizedBox(width: 10),
                    PopupMenuButton<String>(
                      onSelected: (String value) {
                        setState(() {
                          selectedSortOption =
                              value; // Update selected sorting option
                        });
                      },
                      itemBuilder: (BuildContext context) {
                        return sortOptions.map((String option) {
                          return PopupMenuItem<String>(
                            value: option,
                            child: Text(option),
                          );
                        }).toList();
                      },
                      child: Row(
                        children: [
                          Text(
                            selectedSortOption,
                            style: const TextStyle(
                              color: Color(0xFF260446),
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          const Icon(
                            Icons.swap_vert_outlined,
                            color: Color(0xFF414ECA),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 1500,
                  child: ListView.builder(
                    itemCount: 12,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const Column(
                        children: [
                          ListContainer(),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
