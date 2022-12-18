import 'package:backend/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServecesScreen extends StatelessWidget {
  const ServecesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageViewDemo(),
    );
  }
}

class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        MyPage1Widget(),
        MyPage2Widget(),
        // MyPage3Widget(),
      ],
    );
  }
}

class MyPage1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 200, right: 700, left: 70),
                child: Image.asset(
                  'assets/images/dublequteyello.png',
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 270, left: 170),
                child: Image.asset(
                  'assets/images/Health coach.png',
                ),
              ),
            ),
            Container(
              child: Padding(
                  padding: const EdgeInsets.only(top: 370, left: 170),
                  child: Text(
                    'Health Coaching takes a holistic approach to support the whole person. Your Health Coach helps you to nurture ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      decoration: TextDecoration.none,
                    ),
                  )),
            ),
            Container(
              child: Padding(
                  padding: const EdgeInsets.only(top: 390, left: 170),
                  child: Text(
                    'your relationship with your body, mind, and spirit to greatly increase your vitality. ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      decoration: TextDecoration.none,
                    ),
                  )),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 370, left: 150),
                child: Image.asset(
                  'assets/images/relxpng.png',
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            Container(
              child: Padding(
                  padding: const EdgeInsets.only(top: 770, left: 570),
                  child: Text('Know more',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ))),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 460,
                ),
                child: Image.asset(
                  'assets/images/Health.png',
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 400),
                child: Image.asset(
                  'assets/images/LIFE.png',
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Image.asset(
                  'assets/images/LIFE COACH.png',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MyPage2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 570),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.home);
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 670),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.services);
                  },
                  child: Text(
                    'Services',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 770),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.coache);
                  },
                  child: Text(
                    'Coaches',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 870),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.about);
                  },
                  child: Text(
                    'About us',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 200, right: 700, left: 70),
                child: Image.asset(
                  'assets/images/dublequteyello.png',
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 270, left: 170),
                child: Image.asset(
                  'assets/images/Business coach.png',
                ),
              ),
            ),
            Container(
              child: Padding(
                  padding: const EdgeInsets.only(top: 370, left: 170),
                  child: Text(
                    'Business Coaching is a process of clarifying your values, priorities, and goals for your business. Whether you ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      decoration: TextDecoration.none,
                    ),
                  )),
            ),
            Container(
              child: Padding(
                  padding: const EdgeInsets.only(top: 390, left: 170),
                  child: Text(
                    'are just starting a business or need fine-tuning, business. ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      decoration: TextDecoration.none,
                    ),
                  )),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 370, left: 150),
                child: Image.asset(
                  'assets/images/bussnesphoto.png',
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            Container(
              child: Padding(
                  padding: const EdgeInsets.only(top: 770, left: 570),
                  child: Text('Know more',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ))),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 460,
                ),
                child: Image.asset(
                  'assets/images/Health.png',
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 400),
                child: Image.asset(
                  'assets/images/LIFE.png',
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Image.asset(
                  'assets/images/LIFE COACH.png',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// class MyPage3Widget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         // Row(
//         //   children: [
//         //     MyBox(darkRed),
//         //     MyBox(darkRed),
//         //   ],
//         // ),
//         // MyBox(mediumRed, text: 'PageView 3'),
//         // Row(
//         //   children: [
//         //     MyBox(lightRed),
//         //     MyBox(lightRed),
//         //     MyBox(lightRed),
//         //   ],
//         // ),
//       ],
//     );
//   }
// }

// const lightBlue = Color(0xff00bbff);
// const mediumBlue = Color(0xff00a2fc);
// const darkBlue = Color(0xff0075c9);

// final lightGreen = Colors.green.shade300;
// final mediumGreen = Colors.green.shade600;
// final darkGreen = Colors.green.shade900;

// final lightRed = Colors.red.shade300;
// final mediumRed = Colors.red.shade600;
// final darkRed = Colors.red.shade900;

class MyBox extends StatelessWidget {
  final Color color;
  final double? height;
  final String? text;

  MyBox(this.color, {this.height, this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        color: color,
        height: (height == null) ? 150 : height,
        child: (text == null)
            ? null
            : Center(
                child: Text(
                  text!,
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
      ),
    );
  }
}
