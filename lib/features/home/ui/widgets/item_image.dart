import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String heroImageTag;
  final String imageUrl;

  const ItemImage(
      {super.key, required this.heroImageTag, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight / 3.5,
      child: AspectRatio(
        aspectRatio: 1 / 1.2,
        child: ClipRRect(
            borderRadius: BorderRadiusDirectional.circular(16),
            child: Hero(
              tag: heroImageTag,
             
              child: CachedNetworkImage(
                imageUrl: imageUrl,

               
                fit: BoxFit.fill,
              ),
            )),
      ),
    );
  }
}
