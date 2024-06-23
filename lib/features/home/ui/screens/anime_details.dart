import 'package:flutter/material.dart';
import 'package:popcorn_portal/core/widgets/read_more_text.dart';
import 'package:popcorn_portal/features/home/ui/widgets/anime_listview/anime_info.dart';
import 'package:popcorn_portal/features/home/ui/widgets/anime_listview/stack_ui.dart';
import 'package:popcorn_portal/features/home/ui/widgets/headlines_text.dart';
import 'package:popcorn_portal/features/home/ui/widgets/rating_stars.dart';
import '../../data/model/anime_model.dart';

class AnimeDetails extends StatelessWidget {
  final Anime animeData;
  final int index;
  const AnimeDetails({
    super.key,
    required this.animeData,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          StackUI(
              heroTagImage: 'tagImage$index',
              imageUrl:
                  animeData.data![index].images!.webp!.imageurl.toString(),
              urlLink: animeData.data![index].trailer!.url.toString(),
              title: animeData.data![index].title.toString()),
          AnimeInfo(
              year: animeData.data![index].year.toString(),
              type: animeData.data![index].type.toString(),
              episodes: animeData.data![index].episodes.toString()),
          const SizedBox(
            height: 15,
          ),
          IntrinsicWidth(
            child: RatingStars(
              rating: animeData.data![index].score!.toDouble(),
            ),
          ),
          const HeadLinesText(
            headerText: 'Plot',
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
              child: ReadMoreTextWidget(
                text: animeData.data![index].synopsis.toString(),
              )),
        ],
      ),
    ));
  }
}
