import 'package:flutter/material.dart';

class ArticleSlider extends StatefulWidget {
  final String content;
  final String author;
  final String title;
  const ArticleSlider({super.key, required this.content, required this.author, required this.title});

  @override
  State<ArticleSlider> createState() => _ArticleSliderState();
}

class _ArticleSliderState extends State<ArticleSlider> {
  @override
  Widget build(BuildContext context) {
    String displayContent = widget.content;
    if (displayContent.length > 380) {
      displayContent = '${displayContent.substring(0, 380)}...';
    }

    final double screenWidth = MediaQuery.of(context).size.width;
    
    return Container(
      width: screenWidth * 0.88,
      height: 555,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: Colors.grey.shade400,
            width: 0.7, // Adjust the border width as needed
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset(
              'assets/images/two.png',
              fit: BoxFit.cover,
              height: 230,
              width: double.infinity,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: screenWidth * 0.87,
            height: 217,
            child: Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 34,
                        height: 34,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image:
                                NetworkImage("https://via.placeholder.com/34x34"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.author,
                            style: const TextStyle(
                              color: Color(0xFF414ECA),
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          const Text(
                            'UIUX Designer at Google',
                            style: TextStyle(
                              color: Color(0xFF8B8B8B),
                              fontSize: 10,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ContainerCat(),
                  const SizedBox(
                    height: 15,
                  ),
                  IntrinsicHeight(
                    child: SizedBox(
                      width: screenWidth * 0.80,
                      child:  Text(
                        widget.title,
                        style: const TextStyle(
                          color:  Color(0xFF414ECA),
                          fontSize: 15,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  IntrinsicHeight(
                    child: SizedBox(
                      width: screenWidth * 0.80,
                      child: Text(
                        displayContent,
                        style: const TextStyle(
                          color: Color(0xFF595F63),
                          fontSize: 11,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '3 Days Ago',
                  style: TextStyle(
                    color: Color(0xFF8B8B8B),
                    fontSize: 13,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.30,
                ),
                Container(
                  width: 131,
                  height: 32,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF414ECA),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Read More',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 23,
          )
        ],
      ),
    );
  }
}

class ContainerCat extends StatefulWidget {
  const ContainerCat({super.key});

  @override
  ContainerCatState createState() => ContainerCatState();
}

class ContainerCatState extends State<ContainerCat> {
  final List<String> texts = [
    'AI',
    'Machine Learning',
    'lea',
    'Neural Networks',
    'NICE'
  ];

  double calculateContainerWidth(String text) {
    return text.length * 7.0 + 40.0;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5.0,
      runSpacing: 10.0,
      children: texts.take(3).map((text) {
        return Container(
          width: calculateContainerWidth(text),
          height: 27,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFF8B8B8B)),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF6F7AEC),
                  fontSize: 12,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                  letterSpacing: 0.60,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
