import 'package:flutter/material.dart';

class SquateTile extends StatelessWidget {
  final String imagePath;

  const SquateTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.grey.shade200),
      padding: const EdgeInsets.all(20.0),
      child: Image.asset(
        imagePath,
        height: 50,
        width: 50,
      ),
    );
  }
}
