import 'package:backend/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.home);
                },
                child: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                'Servises',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                'Coaches',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
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
      body: Stack(children: [
        Container(
          // height: MediaQuery.of(context).size.height * .8,
          child: Padding(
            padding: const EdgeInsets.only(left: 860, top: 10),
            child: Image.asset(
              'assets/images/yello.png',
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 930),
            child: Image.asset(
              'assets/images/person2.png',
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 177,
              top: 250,
            ),
            child: Text('Log in',
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          width: 600,
          child: Padding(
            padding: const EdgeInsets.only(left: 300, top: 400),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'User name',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber), //<-- SEE HERE
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 600,
          child: Padding(
            padding: const EdgeInsets.only(left: 300, top: 450),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'password',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber), //<-- SEE HERE
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 300, top: 530),
            child: ElevatedButton(
              child: Text(
                'Log in',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2)),
                  side: BorderSide(
                      width: 2, color: Color.fromARGB(255, 223, 189, 88)),
                  padding: EdgeInsets.all(20)),
              onPressed: () {},
            ),
          ),
        )
      ]),
    );
  }
}
