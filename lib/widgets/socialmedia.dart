import 'package:flutter/cupertino.dart';

class SocialMedialist extends StatefulWidget {
  const SocialMedialist({super.key});

  @override
  State<SocialMedialist> createState() => _SocialMedialistState();
}

class _SocialMedialistState extends State<SocialMedialist> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 17,
              height: 17,
              decoration: const ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/50x50"),
                  fit: BoxFit.fill,
                ),
                shape: OvalBorder(),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'Linkedin',
              style: TextStyle(
                color: Color(0xFF8B8B8B),
                fontSize: 12,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            )
          ],
        ),
        const SizedBox(height: 8,),
      ],
    );
  }
}
