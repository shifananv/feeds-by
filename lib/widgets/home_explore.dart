import 'package:feeds/widgets/article_banner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeExplore extends StatefulWidget {
  final String frametitle;
  final void Function()? onTap;

  const HomeExplore({super.key,required this.frametitle,required this.onTap,});

  @override
  State<HomeExplore> createState() => _HomeExploreState();
}

class _HomeExploreState extends State<HomeExplore> {
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
                  widget.frametitle,
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
                  onTap:widget.onTap,
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
                  return const Padding(
                    padding: EdgeInsets.only(
                      right: 18.0,
                    ),
                    child: ArticleBanner(
                        title:
                            '10 tips for Boosting your Productivityxdcfvgjbhknm,nbvgfcddzsxc'),
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
