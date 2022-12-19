import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.text, required this.onPressed});

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 300, top: 660),
        child: ElevatedButton(
          child: Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)),
              side: BorderSide(
                  width: 2, color: Color.fromARGB(255, 223, 189, 88)),
              padding: EdgeInsets.all(20)),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
