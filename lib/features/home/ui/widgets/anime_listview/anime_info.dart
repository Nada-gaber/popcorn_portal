import 'package:flutter/material.dart';

class AnimeInfo extends StatelessWidget {
  final String year;
  final String type;
  final String episodes;
  const AnimeInfo({super.key, required this.year, required this.type, required this.episodes});

  @override
  Widget build(BuildContext context) {
    return   Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(year,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w200)),
              ),
              Center(
                child: Text(' | Type :$type',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w200)),
              ),
              Center(
                child: Text(' | Episode - $episodes',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w200)),
              ),
            ],
          );
  }
}