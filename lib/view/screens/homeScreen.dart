// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //-----App bar serchbox and navbar menu------//
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 250, 247, 249),
        flexibleSpace: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Expanded(
              child: SafeArea(
                child: Text(''),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                'Home',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.services);
                },
                child: Text(
                  'Servises',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.coache);
                },
                child: Text(
                  'Coaches',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.about);
                },
                child: Text(
                  'about',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.profile);
                },
                child: Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
            ),

            Container(
              // height: MediaQuery.of(context).size.height * .8,
              width: 322,
              height: 322,
              child: TextField(
                style: TextStyle(fontSize: 17),
                decoration: InputDecoration(
                  filled: true,
                  suffixIcon: Icon(Icons.search,
                      color: Theme.of(context).iconTheme.color),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                  contentPadding: EdgeInsets.zero,
                  hintText: 'Search',
                ),
              ),
            ),
            // SizedBox(
            //   height: 60,
            // ),
          ],
        ),
      ),

      //----end of appbar--///

      body: Stack(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 580, top: 230),
              child: Image.asset('assets/images/person.jpeg',
                  width: 230, height: 390, fit: BoxFit.fill),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 880, top: 430),
              child: Text(
                'Life ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 65,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 880, top: 490),
              child: Text(
                'Coach',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 66,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 900,
                top: 600,
              ),
              child: ElevatedButton(
                child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    side: BorderSide(width: 2, color: Colors.black),
                    padding: EdgeInsets.all(20)),
                onPressed: () {
                  Get.toNamed(Routes.login);
                },
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 1020, top: 600),
              child: ElevatedButton(
                child: Text(
                  'Join Us',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    side: BorderSide(width: 2, color: Colors.black),
                    padding: EdgeInsets.all(20)),
                onPressed: () {
                  Get.toNamed(Routes.joinus);
                },
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 1000, top: 610),
              child: ImageIcon(
                AssetImage("images/fecbook.png"),
                color: Colors.black,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 1200, top: 650),
              child: ImageIcon(
                AssetImage("images/twitter.png"),
                color: Colors.black,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 1200, top: 690),
              child: ImageIcon(
                AssetImage("images/linked.png"),
                color: Colors.black,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 1200, top: 730),
              child: ImageIcon(
                AssetImage("images/insta.png"),
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),

      // height: MediaQuery.of(context).size.height * .8,
      // child: Column(
      //   children: [
      // Padding(
      //   padding: const EdgeInsets.only(top: 10),
      //   child: Container(
      //     child: Image.asset('assets/images/person.jpeg',
      //         width: 100, height: 160, fit: BoxFit.fill),
      //   ),
      // ),
      // Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(
      //         right: 800,
      //       ),
      //       child: Container(),
      //     ),
      //   ],
      // ),

      //------------
      // Row(
      //   children: [
      //     Container(
      //       // height: MediaQuery.of(context).size.height * .8,
      //       // height: MediaQuery.of(context).size.height,
      //       child: Padding(
      //         padding: const EdgeInsets.only(
      //           left: 700,
      //           top: 400,
      //         ),
      //         child: ElevatedButton(
      //           child: Text(
      //             'Login',
      //             style: TextStyle(fontSize: 18, color: Colors.white),
      //           ),
      //           style: ElevatedButton.styleFrom(
      //             primary: Colors.black,
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(30),
      //               // padding: EdgeInsets.all(20)),
      //             ),
      //           ),
      //           onPressed: () {
      //             Get.toNamed(Routes.login);
      //           },
      //         ),
      //       ),
      //     ),
      //     Container(
      //       // height: MediaQuery.of(context).size.height * .8,
      //       child: Padding(
      //         padding: const EdgeInsets.only(left: 100, top: 400),
      //         child: ElevatedButton(
      //           child: Text(
      //             'Join Us',
      //             style: TextStyle(fontSize: 18, color: Colors.black),
      //           ),
      //           style: ElevatedButton.styleFrom(
      //               primary: Colors.white,
      //               shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(30)),
      //               side: BorderSide(width: 2, color: Colors.black),
      //               padding: EdgeInsets.all(20)),
      //           onPressed: () {
      //             Get.toNamed(Routes.joinus);
      //           },
      //         ),
      //       ),
      //     ),
      //   ],
      // ),

      //----------

      // Column(
      //   children: [
      //     Container(
      //       // height: MediaQuery.of(context).size.height * .8,
      //       child: Padding(
      //         padding: const EdgeInsets.only(right: 1200, top: 100),
      //         child: ImageIcon(
      //           AssetImage("images/fecbook.png"),
      //           color: Color(0xFF3A5A98),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(right: 1200, top: 10),
      //       child: ImageIcon(
      //         AssetImage("images/twitter.png"),
      //         color: Colors.black,
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(right: 1200, top: 10),
      //       child: ImageIcon(
      //         AssetImage("images/linked.png"),
      //         color: Colors.red,
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(right: 1200, top: 10),
      //       child: ImageIcon(
      //         AssetImage("images/insta.png"),
      //         color: Colors.green,
      //       ),
      //     ),
      //   ],
      // ),
      //   ],
      // ),

      //--------
    );
  }
}
