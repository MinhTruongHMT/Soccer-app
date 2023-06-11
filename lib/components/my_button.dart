import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.symmetric(horizontal: 50.0),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(8.0)),
        child: const Center(
          child: Text(
            "Sign In",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
