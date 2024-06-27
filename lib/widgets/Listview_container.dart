import 'package:flutter/material.dart';

class ListContainer extends StatefulWidget {
  const ListContainer({super.key});

  @override
  State<ListContainer> createState() => _ListContainerState();
}

class _ListContainerState extends State<ListContainer> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.88,
      height: 105,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 105,
            height: 105,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/cat.png'),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 195,
                child: Text(
                  '10 tips for Boosting your Productivity ...',
                  style: TextStyle(
                    color: Color(0xFF414ECA),
                    fontSize: 14,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    decoration:  const ShapeDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/images/cat.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: OvalBorder(),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'James Hok',
                    style: TextStyle(
                      color: Color(0xFF414ECA),
                      fontSize: 10,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
                Row(
                children: [
                  const Text(
                    '5 days ago',
                    style: TextStyle(
                      color: Color(0xFF8B8B8B),
                      fontSize: 8,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  SizedBox(width: screenWidth*0.363,),
                  const Icon(
                    Icons.bookmark,
                    size: 18,
                    color: Color(0xFF414ECA),
                  ),
                  const SizedBox(width: 10,),
                  const Icon(Icons.more_vert,size: 18,color: Colors.grey,)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
