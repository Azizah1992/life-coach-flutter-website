import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 270, top: 400),
            child: Image.asset(
              'assets/images/C.png',
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 570, top: 250),
            child: Image.asset(
              'assets/images/what is text.png',
              width: 250,
              height: 250,
            ),
          ),
        ),
        // Container(
        //   child: Text(
        //     'A process to change your life now Life Coaching is a partnership and process to assist you in personal growth, empowerment, achievement, and transformation. A Life Coaching session is a time that you set aside to focus specifically on yourself and your priorities. It will help you clarify what is ',
        //     style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 14,
        //     ),
        //     overflow: TextOverflow.clip,
        //   ),
        // ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 270, top: 250),
            child: Image.asset(
              'assets/images/abouttext.png',
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 460),
            child: Image.asset(
              'assets/images/Health.png',
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 400),
            child: Image.asset(
              'assets/images/LIFE.png',
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 300),
            child: Image.asset(
              'assets/images/LIFE COACH.png',
            ),
          ),
        ),
      ]),
    );
  }
}
