import 'package:backend/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

import '../widgets/coach_image.dart';

class CoachesScreen extends StatelessWidget {
  const CoachesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 200, top: 110),
            child: Image.asset(
              'assets/images/Our coach.png',
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
        // Container(
        //   child: Padding(
        //     padding: const EdgeInsets.only(left: 190, top: 270),
        //     child: Image.asset(
        //       'assets/images/blackcercle.png',
        //       width: 250,
        //       height: 250,
        //     ),
        //   ),
        // ),
        //---------
        // Container(
        //   child: Padding(
        //     padding: const EdgeInsets.only(left: 205, top: 284),
        //     child: Image.asset(
        //       'assets/images/ch1.png',
        //       width: 220,
        //       height: 220,
        //     ),
        //   ),
        // ),
        // Container(
        //   child: Padding(
        //       padding: const EdgeInsets.only(left: 260, top: 520),
        //       child: Text(
        //         'Albert Dera',
        //         style: TextStyle(
        //             color: Colors.black,
        //             fontSize: 17,
        //             decoration: TextDecoration.none),
        //       )),
        // ),
        // Container(
        //   child: Padding(
        //     padding: const EdgeInsets.only(left: 250, top: 540),
        //     child: Text(
        //       'Bussiness Coach',
        //       style: TextStyle(
        //           color: Colors.black,
        //           fontSize: 17,
        //           decoration: TextDecoration.none),
        //     ),
        //   ),
        // ),

        Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.coachdescription);
              },
              child: CoachImage(
                des: 'Bussines Coach',
                name: 'Coach',
                image: 'assets/images/ch1.png',
              ),
            ),
            CoachImage(
              des: 'Bussines Coach',
              name: 'Coach 2',
              image: 'assets/images/ch2.png',
            ),
            CoachImage(
              des: 'Bussines Coach',
              name: 'Coach3',
              image: 'assets/images/ch3.png',
            ),
          ],
        ),
        //---------
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 670),
            child: Container(
              // child: Padding(
              //   padding: const EdgeInsets.only(top: 700),
              //   child: Image.asset(
              //     'assets/images/endyello.png',
              //     width: 1900,
              //     // height: 220,
              //   ),
              // ),
              color: Color.fromARGB(255, 234, 213, 50),
              height: 250,
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 840, left: 200),
            child: ImageIcon(
              AssetImage("images/insta.png"),
              color: Colors.white,
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 840, left: 150),
            child: ImageIcon(
              AssetImage("images/twitter.png"),
              color: Colors.white,
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 840, left: 90),
            child: ImageIcon(
              AssetImage("images/fecbook.png"),
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
