import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:popcorn_portal/features/home/ui/widgets/anime_listview/icons_row.dart';
import 'package:popcorn_portal/features/home/ui/widgets/anime_listview/youtube_icon.dart';

class StackUI extends StatelessWidget {
  final String heroTagImage;
  final String imageUrl;
  final String urlLink;
  final String title;
  const StackUI({
    Key? key,
    required this.heroTagImage,
    required this.imageUrl,
    required this.urlLink,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.8,
      child: Stack(fit: StackFit.expand, children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Hero(
            tag: heroTagImage,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Color(0xFF0E0F0F)],
                  stops: [0, .93])),
        ),
        const IconsRow(),
        Positioned(bottom: 100, child: YoutubeIcon(urlLink: urlLink)),
        Positioned(
          bottom: 12,
          left: 8,
          right: 8,
          child: IntrinsicWidth(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
