import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AnimeDataItme extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String duration;
  final String rating;
  final String type;

  const AnimeDataItme({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.duration,
    required this.rating,
    required this.type,
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
              height: screenHeight / 3.5,
              child: AspectRatio(
                aspectRatio: 1 / 1.2,
                child: ClipRRect(
                    borderRadius: BorderRadiusDirectional.circular(16),
                    child: Hero(
                      tag: imageUrl,
                      child: CachedNetworkImage(
                        imageUrl: imageUrl,
                        fit: BoxFit.fill,
                      ),
                    )),
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //   episodes
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
                  //       Members
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.timelapse,
                        size: screenWidth / 15,
                        color: Colors.purpleAccent,
                      ),
                      Flexible(
                        child: Text(
                          duration,
                          style: TextStyle(
                              fontSize: screenWidth / 24,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    rating,
                    style: TextStyle(
                        fontSize: screenWidth / 20,
                        fontWeight: FontWeight.w300),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    type,
                    style: TextStyle(
                        fontSize: screenWidth / 20,
                        fontWeight: FontWeight.w300),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
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