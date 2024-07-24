// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.onTap,
    required this.title,
    super.key,
  });
  VoidCallback? onTap;
  String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
        ),
        width: double.infinity,
        height: 50,
        child: Center(
            child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
