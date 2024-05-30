import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // Set a border radius to create a slightly rounded look
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),

        // Set the background color to white
        fillColor: Colors.white,
        filled: true,

        //  Remove padding for a more compact look
        contentPadding: EdgeInsets.zero,

        // Set hint text with a light grey color
        hintText: "Search",
        hintStyle: TextStyle(
          fontSize: 16.0,
          color: Colors.grey.shade400,
        ),

        // Add a magnifying glass icon as the prefix icon
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey.shade400,
        ),
      ),
    );
  }
}
