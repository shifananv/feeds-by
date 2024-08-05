import 'package:feeds/screen/Discover_Page.dart';
import 'package:feeds/widgets/Listview_container.dart';
import 'package:feeds/widgets/topwriter_widget.dart';
import 'package:flutter/material.dart';

class TopWriters extends StatefulWidget {
  const TopWriters({super.key});

  @override
  State<TopWriters> createState() => _TopWritersState();
}

class _TopWritersState extends State<TopWriters> {
  // bool isFollowing = false;
  List<String> ranks = ['01', '02', '03', '04', '05','06', '07', '08', '09', '10','11', '12', '13', '14', '15'];
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
              'Top Writers',
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                ListView.builder(
                  itemCount:
                      ranks.length, // Assumes all lists have the same length
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        TrWidget(
                          rank: ranks[index],
                          imagePath: imagePaths[index],
                          name: names[index],
                          description: descriptions[index],
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
