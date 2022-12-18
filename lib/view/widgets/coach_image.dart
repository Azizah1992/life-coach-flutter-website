import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoachImage extends StatelessWidget {
  CoachImage({
    super.key,
    required this.name,
    required this.image,
    required this.des,
  });

  final String image;
  final String name;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
             Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 190, top: 270),
            child: Image.asset(
              'assets/images/blackcercle.png',
              width: 250,
              height: 250,
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 205, top: 284),
            child: Image.asset(
              '${image}',
              width: 220,
              height: 220,
            ),
          ),
        ),
        Container(
          child: Padding(
              padding: const EdgeInsets.only(left: 260, top: 520),
              child: Text(
                '${name}',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    decoration: TextDecoration.none),
              )),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 250, top: 540),
            child: Text(
              '${des}',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  decoration: TextDecoration.none),
            ),
          ),
        ),
      ],
    );
  }
}
