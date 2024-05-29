import 'package:flutter/material.dart';

class ItemTitle extends StatelessWidget {
  final String title;
  const ItemTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 0, vertical: 3),
      child: SizedBox(
        width: 150,
        child: Text(
          title,
          style: TextStyle(
              fontSize: screenWidth / 23, fontWeight: FontWeight.w500),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
