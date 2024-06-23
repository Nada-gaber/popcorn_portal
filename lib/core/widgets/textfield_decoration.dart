import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final IconData icon;
  const CustomTextField(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        fillColor: Colors.grey,
        filled: true,
        contentPadding: EdgeInsets.zero,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16.0,
          color: Colors.grey.shade400,
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.grey.shade400,
        ),
      ),
    );
  }
}
