import 'package:feeds/screen/Top_writers.dart';
import 'package:feeds/widgets/Listview_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TopWriterSlider extends StatefulWidget {
  const TopWriterSlider({super.key});

  @override
  State<TopWriterSlider> createState() => _TopWriterSliderState();
}

class _TopWriterSliderState extends State<TopWriterSlider> {
  final List<String> images = [
    'assets/images/cat.png',
    'assets/images/cat.png',
    'assets/images/cat.png',
    'assets/images/cat.png',
    'assets/images/cat.png',
    'assets/images/cat.png',
    'assets/images/cat.png',
    'assets/images/cat.png',
    // Add more image paths as needed
  ];
  final List<String> names = [
    'Ronald',
    'Biby',
    'John',
    'shifzzz',
    'Ronald',
    'Biby',
    'John',
    'shifzzz',
    // Add more image paths as needed
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 134,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TopWriters()),
                    );
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
            height: 10,
          ),
          SizedBox(
            height: 104,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      margin: EdgeInsets.all(15.0),
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.fill,
                        ),
                        shape: OvalBorder(),
                      ),
                    ),
                    Text(
                      names[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF39006F),
                        fontSize: 12,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
