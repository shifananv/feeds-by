import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  ContainerScreenState createState() => ContainerScreenState();
}

class ContainerScreenState extends State<ContainerScreen> {
  final List<String> texts = [
    'AI', 'Machine Learning', 'Deep Learning', 'Neural Networks', 'NLP',
    'System Design', 'OOP', 'Data Structures & Algorithms (DSA)',
    'Time & Space Complexity Analysis', 'Database Management Systems',
    'Operating Systems (OS)', 'Networking Fundamentals',
    'Software Development Life Cycle (SDLC)', 'Version Control Systems (VCS)',
    'Problem-Solving Skills', 'Communication Skills', 'Teamwork',
    'Resume & Cover Letter Writing', 'Technical Interview Preparation',
    'Technical Interview Preparation', 'Technical Interview Preparation',
    'Technical Interview Preparation', 'AI', 'Machine Learning',
    'Deep Learning', 'Neural Networks', 'NLP', 'System Design', 'OOP',
    'Data Structures & Algorithms (DSA)', 'Time & Space Complexity Analysis',
    'Database Management Systems', 'Operating Systems (OS)',
    'Networking Fundamentals', 'Software Development Life Cycle (SDLC)',
    'Version Control Systems (VCS)', 'Problem-Solving Skills',
    'Communication Skills', 'Teamwork', 'Resume & Cover Letter Writing',
    'Technical Interview Preparation', 'Technical Interview Preparation',
    'Technical Interview Preparation', 'Technical Interview Preparation'
  ];

  List<String> selectedTexts = [];

  double calculateContainerWidth(String text) {
    return text.length * 6.0 + 40.0; 
  }

  void toggleSelection(String text) {
    setState(() {
      if (selectedTexts.contains(text)) {
        selectedTexts.remove(text);
      } else {
        selectedTexts.add(text);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5.0, 
      runSpacing: 10.0, 
      children: texts.map((text) {
        return GestureDetector(
          onTap: () => toggleSelection(text),
          child: Container(
            width: calculateContainerWidth(text),
            height: 22,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: selectedTexts.contains(text) ? const Color.fromARGB(255, 212, 215, 255) : Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFF6F7AEC)),
                borderRadius: BorderRadius.circular(30),
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
          ),
        );
      }).toList(),
    );
  }
}
