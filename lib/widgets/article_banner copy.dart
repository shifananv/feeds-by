import 'package:flutter/material.dart';

class ArticleBannerr extends StatefulWidget {
  final String title;

  const ArticleBannerr({super.key, required this.title});

  @override
  State<ArticleBannerr> createState() => _ArticleBannerState();
}

class _ArticleBannerState extends State<ArticleBannerr> {
  bool isBookmarked = false;

  void toggleBookmark() {
    setState(() {
      isBookmarked = !isBookmarked;
    });
  }

  @override
  Widget build(BuildContext context) {
    String displaytitle = widget.title;
    if (displaytitle.length > 40) {
      displaytitle = '${displaytitle.substring(0, 40)}...';
    }
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: const Color.fromARGB(115, 255, 0, 0),
      height: 222,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: screenWidth * 0.41,
                height: 150,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/two.png"),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Positioned(
                top: 5,
                left: screenWidth * 0.308,
                child: Container(
                  width: 34,
                  height: 34,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF414ECA),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: screenWidth * 0.292,
                child: IconButton(
                  onPressed: toggleBookmark,
                  icon: isBookmarked
                      ? const Icon(Icons.bookmark)
                      : const Icon(Icons.bookmark_border),
                  iconSize: 24,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 38,
            width: screenWidth * 0.41,
            child: Text(
              displaytitle,
              style: const TextStyle(
                color: Color(0xFF414ECA),
                fontSize: 14,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                height: 1.2,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                width: 18,
                height: 18,
                decoration: const ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://via.placeholder.com/34x34"),
                    fit: BoxFit.fill,
                  ),
                  shape: OvalBorder(),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Akshay',
                style: TextStyle(
                  color: Color(0xFF414ECA),
                  fontSize: 10,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),
              ),
              const Spacer(),
              const Text(
                '5 days ago',
                style: TextStyle(
                  color: Color(0xFF8B8B8B),
                  fontSize: 8,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),
              ),
              const SizedBox(
                width: 18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
