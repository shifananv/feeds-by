import 'package:feeds/screen/Topwriter_openview.dart';
import 'package:flutter/material.dart';

class TrWidget extends StatefulWidget {
  final String rank;
  final String imagePath;
  final String name;
  final String description;

  const TrWidget({
    required this.rank,
    required this.imagePath,
    required this.name,
    required this.description,
    super.key,
  });

  @override
  State<TrWidget> createState() => _TrWidgetState();
}

class _TrWidgetState extends State<TrWidget> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.888,
      height: screenWidth * 0.138,
      child: Row(
        children: [
          Text(
            widget.rank,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imagePath),
                fit: BoxFit.fill,
              ),
              shape: const CircleBorder(),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TopwriterOpenedview()),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                    color: Color(0xFF414ECA),
                    fontSize: 15,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                Text(
                  widget.description,
                  style: const TextStyle(
                    color: Color(0xFF8B8B8B),
                    fontSize: 11,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isFollowing = !isFollowing;
              });
            },
            child: Container(
              width: isFollowing ? 95 : 77,
              height: 30,
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
              decoration: ShapeDecoration(
                color:
                    isFollowing ? Colors.transparent : const Color(0xFF404DC7),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Color(0xFF404DC7),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Center(
                child: Text(
                  isFollowing ? 'Following' : 'Follow',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: isFollowing ? const Color(0xFF404DC7) : Colors.white,
                    fontSize: 12,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
