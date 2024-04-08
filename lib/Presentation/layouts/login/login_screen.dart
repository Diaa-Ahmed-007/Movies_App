import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121312),
      body: Column(
        children: [
          Text(
            "Welcome Back",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "Enjoy your watch",
            style: TextStyle(
              color: Color(0xffFFBB3B),
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: "Email",
              hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 4,strokeAlign: 3),
              ),
              disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 4,strokeAlign: 3),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1),
              ),
              focusedBorder:  UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffFFBB3B), width: 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
