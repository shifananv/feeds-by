import 'package:feeds/screen/TopicDetailedscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryTile extends StatelessWidget {
  final String catName;
  final int articleNum;
  const CategoryTile({super.key, required this.catName, required this.articleNum});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TopicDetailedScreen()));
          },
          child: Container(
            width: screenWidth * 0.404,
            height: screenWidth * 0.270,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color.fromARGB(183, 3, 21, 185),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Opacity(
                opacity: 0.29,
                child: Image.asset('assets/images/cat.png', fit: BoxFit.fill)),
          ),
        ),
         Positioned(
          top: 48,
          left: 15,
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              catName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
             Text(
              '$articleNum+ Articles',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            )
          ],
        ))
      ],
    );
  }
}
