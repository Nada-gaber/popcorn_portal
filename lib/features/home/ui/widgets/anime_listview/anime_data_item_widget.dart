import 'package:flutter/material.dart';
import 'package:popcorn_portal/features/home/ui/screens/details.dart';
import 'package:popcorn_portal/features/home/ui/widgets/item_image.dart';
import 'package:popcorn_portal/features/home/ui/widgets/item_title.dart';
import '../../../data/model/anime_model.dart';

class AnimeDataItme extends StatelessWidget {
  final Anime animeData;
  const AnimeDataItme({
    super.key,
    required this.animeData,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.5,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: animeData.data!.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimeDetails(
                        animeData: animeData,
                        index: index,
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ItemImage(
                          heroImageTag: 'tagImage$index',
                          imageUrl: animeData.data![index].images!.jpg!.imageurl
                              .toString()),
                      const SizedBox(
                        width: 6,
                      ),
                      ItemTitle(
                        title: animeData.data![index].title.toString(),
                      ),
                      Text(
                        animeData.data![index].type.toString(),
                        style: TextStyle(
                            fontSize: screenWidth / 29,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
