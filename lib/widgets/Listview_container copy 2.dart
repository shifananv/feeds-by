import 'package:flutter/material.dart';

class ListContainer3 extends StatefulWidget {
  const ListContainer3({super.key});

  @override
  State<ListContainer3> createState() => _ListContainerState();
}

class _ListContainerState extends State<ListContainer3> {
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
                borderRadius: BorderRadius.circular(14),
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
                    fontSize: 15,
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
                    Icons.app_registration_rounded,
                    size: 18,
                    color: Color.fromARGB(255, 130, 130, 130),
                  ),
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
