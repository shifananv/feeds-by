import 'package:flutter/cupertino.dart';

class TopWriter extends StatefulWidget {
  final String dpurl;
  const TopWriter({super.key, required this.dpurl});

  @override
  State<TopWriter> createState() => _TopWriterState();
}

class _TopWriterState extends State<TopWriter> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration:  ShapeDecoration(
        image: DecorationImage(
          image: NetworkImage(widget.dpurl),
          fit: BoxFit.cover,
        ),
        shape: const OvalBorder(),
      ),
    );
  }
}
