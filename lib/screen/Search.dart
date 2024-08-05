import 'package:feeds/screen/Topwriter_openview.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Container(
            width: 279,
            height: 40,
            decoration: ShapeDecoration(
              color: const Color(0x7FD9D9D9),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.search_outlined,
                  size: 22,
                  color: Color.fromARGB(255, 95, 95, 95),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 52,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          children: [
            const SizedBox(
              height: 22,
            ),
            const Row(
              children: [
                Text(
                  '0 found',
                  style: TextStyle(
                    color: Color(0xFF260446),
                    fontSize: 18,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 143,
            ),
            Container(
              width: 235,
              height: 176,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/235x176"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            const Text(
              'Not Found',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF260446),
                fontSize: 20,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              width: 309,
              child: Text(
                'Sorry. the keyword you entered cannot be found. please check again or search with another keyword.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF8B8B8B),
                  fontSize: 13,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
