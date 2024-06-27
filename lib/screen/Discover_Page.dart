import 'dart:typed_data';

import 'package:feeds/screen/Mostpopular_page.dart';
import 'package:feeds/widgets/cat_explore.dart';
import 'package:feeds/widgets/category_tile.dart';
import 'package:feeds/widgets/home_explore.dart';
import 'package:feeds/widgets/topwriter_slider.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final List<String> catName = [
    'AI',
    'Data Science',
    'Data Science',
    'Data Science',
    'Data Science',
    'Data Science',
    'Data Science',
    'Data Science',
    'Data Science',
    'Data Science',
    'Data Science',
    'Data Science',
  ];
  final List<int> articleNum = [
    100,
    100,
    100,
    100,
    100,
    100,
    100,
    100,
    100,
    100,
    100,
    100,
  ];
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        titleSpacing: -7,
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20,
            ),
            Image.asset('assets/images/infoshare.png'),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'Discover',
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
        actions: const [
          Icon(
            Icons.search,
            size: 22,
            color: Color(0xFF414ECA),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.style_outlined,
            size: 22,
            color: Color(0xFF414ECA),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 46,
                width: screenWidth * 0.88,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 222, 225),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search feeds or writers here...',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              HomeExplore(
                frametitle: 'Most Popular',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MostPopular()),
                  );
                },
              ),
              const TopWriterSlider()
            ],
          ),
        ),
      ),
    );
  }
}
