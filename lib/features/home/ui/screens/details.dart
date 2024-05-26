import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AnimeDetails extends StatelessWidget {
  final String imageUrl;

  const AnimeDetails({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hi'),
      ),
      body: Center(
        child: Hero(
          tag: imageUrl, // Same tag as in the product list
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
    ;
  }
}
