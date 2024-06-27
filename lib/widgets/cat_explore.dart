import 'package:feeds/widgets/article_banner.dart';
import 'package:feeds/widgets/category_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatExplore extends StatelessWidget {
  final String framestitle;
  final void Function()? onTap;
  
  final String catName;
  
  final int articleNum;

  const CatExplore({super.key,required this.framestitle,required this.onTap, required this.catName, required this.articleNum,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 298,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Text(
                  framestitle,
                  style: const TextStyle(
                    color: Color(0xFF39006F),
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap:onTap,
                  child: const Icon(
                    Icons.arrow_forward_sharp,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.maxFinite,
              height: 222.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.only(
                      right: 18.0,
                    ),
                    child: CategoryTile(catName: catName, articleNum: articleNum),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 25,)
        ],
      ),
    );
  }
}
