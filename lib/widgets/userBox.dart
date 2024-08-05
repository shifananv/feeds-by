import 'package:flutter/material.dart';

class UserBox extends StatefulWidget {
  const UserBox({super.key});

  @override
  State<UserBox> createState() => _UserBoxState();
}

class _UserBoxState extends State<UserBox> {
  bool isFollowing = false;
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Row(
                  children: [
                    Container(
                      width: screenWidth * 0.138,
                      height: screenWidth * 0.138,
                      decoration: const ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/profile.png"),
                          fit: BoxFit.fill,
                        ),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'James Hok',
                          style: TextStyle(
                            color: Color(0xFF414ECA),
                            fontSize: 19,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'UIUX Designer at Google',
                          style: TextStyle(
                            color: Color(0xFF8B8B8B),
                            fontSize: 13,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isFollowing = !isFollowing;
                        });
                      },
                      child: Container(
                        width: isFollowing ? 113 : 95,
                        height: 35,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 5),
                        decoration: ShapeDecoration(
                          color: isFollowing
                              ? Colors.transparent
                              : const Color(0xFF404DC7),
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
                              color: isFollowing
                                  ? const Color(0xFF404DC7)
                                  : Colors.white,
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
  }
}