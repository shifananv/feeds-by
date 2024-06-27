import 'package:feeds/widgets/top_writers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopWriterSlider extends StatefulWidget {
  const TopWriterSlider({super.key});

  @override
  State<TopWriterSlider> createState() => _TopWriterSliderState();
}

class _TopWriterSliderState extends State<TopWriterSlider> {
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
                const Text(
                  'Top Writers',
                  style: TextStyle(
                    color: Color(0xFF39006F),
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap:() {
                    
                  },
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
                itemCount: 12,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return  const Padding(
                    padding: EdgeInsets.only(
                      right: 18.0,
                    ),
                    child: TopWriter(dpurl: ''),
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