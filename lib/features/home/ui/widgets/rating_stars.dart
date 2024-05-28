import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final double rating; // API data between 0 and 10
  final int totalStars; // Total number of stars to display (e.g., 5)
  final Color starColor; // Color of the star icons (optional)

  const RatingStars({
    super.key,
    required this.rating,
    this.totalStars = 5,
    this.starColor = Colors.amber,
  });

  @override
  Widget build(BuildContext context) {
    final double scaledRating = rating / 2.0; // Scale rating to 0-5 range

    List<Widget> stars = [];
    for (int i = 0; i < 5; i++) {
      final double starRating = i + 0.5; // Consider half star positions
      if (scaledRating >= starRating) {
        stars.add(
          Icon(
            Icons.star,
            size: 20.0, // Adjust star size as needed
            color: starColor,
          ),
        );
      } else if (scaledRating >= i && scaledRating < starRating) {
        stars.add(
          Icon(
            Icons.star_half,
            size: 20.0, // Adjust star size as needed
            color: starColor,
          ),
        );
      } else {
        stars.add(
          Icon(
            Icons.star_outline,
            size: 20.0, // Adjust star size as needed
            color: starColor.withOpacity(0.3), // Adjust opacity for empty stars
          ),
        );
      }
    }
    return Row(
      children: stars,
    );
  }
}
