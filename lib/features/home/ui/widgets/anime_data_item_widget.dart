import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AnimeDataItme extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String location;

  const AnimeDataItme({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 6),
      child: GestureDetector(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight / 5.8,
              child: AspectRatio(
                aspectRatio: 1 / 1.2,
                child: ClipRRect(
                    borderRadius: BorderRadiusDirectional.circular(16),
                    child: Hero(
                        tag: imageUrl,
                        child: CachedNetworkImage(
                        imageUrl: imageUrl,
                        fit: BoxFit.fill,
                      ),),
              ),
            ), ),
            const SizedBox(
              width: 6,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //episodes
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 8, vertical: 8),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: screenWidth / 20,
                          fontWeight: FontWeight.w500),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  //Members
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.people,
                        size: screenWidth / 15,
                        color: Colors.purpleAccent,
                      ),
                      Flexible(
                        child: Text(
                          location,
                          style: TextStyle(
                              fontSize: screenWidth / 24,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
