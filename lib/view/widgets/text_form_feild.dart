import 'package:flutter/material.dart';

class AuthTextFormFeild extends StatelessWidget {
  const AuthTextFormFeild(
      {super.key,
      required this.hintText,
      required this.obscureText,
      required this.controller,
      required this.validator
      });

  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final Function validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Padding(
        padding: const EdgeInsets.only(left: 300, top: 20),
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          validator: (value) => validator(value),
          decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.amber), //<-- SEE HERE
            ),
          ),
        ),
      ),
    );
  }
}
