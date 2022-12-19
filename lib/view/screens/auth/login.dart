import 'package:backend/logic/controller/auth_controller.dart';
import 'package:backend/routes/routes.dart';
import 'package:backend/utils/my_string.dart';
import 'package:backend/view/widgets/button.dart';
import 'package:backend/view/widgets/text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final controller = Get.find<AuthController>();

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
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            // height: MediaQuery.of(context).size.height * .8,
            // height: 9000,
            child: Padding(
              padding: const EdgeInsets.only(left: 930),
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
                top: 150,
              ),
              child: Text('Talk Us',
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 270),
            child: Form(
              key: formKey,
              child: Column(
                children: [
             
                  AuthTextFormFeild(
                    hintText: 'Your Email',
                    obscureText: false,
                    controller: emailController,
                    validator: (value) {
                      // if (!RegExp(validationEmail).hasMatch(value)) {
                      //   return "Worng E-mail";
                      // } else {
                      //   return null;
                      // }
                    },
                  ),
                  AuthTextFormFeild(
                    hintText: 'Password',
                    obscureText: true,
                    controller: passwordController,
                  validator: (value) {
                if (value.toString().length < 6) {
                  return " Worng password";
                } else {
                  return null;
                }
              },
                  ),
                ],
              ),
            ),
          ),
          GetBuilder<AuthController>(
            builder: (_) {
              return AuthButton(
            onPressed: () async {
                if (formKey.currentState!.validate()) {
                  String email = emailController.text.trim();
                  String password = passwordController.text;
                  controller.displayUserEmail.value = email;
                  controller.loginUsingFierbase(
                      email: email, password: password);
                  // show loding page after press login in button
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Center(child: CircularProgressIndicator());
                    },
                  );
                }
              },
                text: 'Log In',
              );
            },
          )
        ]),
      ),
    );
  }
}
