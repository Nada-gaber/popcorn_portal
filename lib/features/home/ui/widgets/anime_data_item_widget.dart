import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:popcorn_portal/features/home/ui/screens/details.dart';
import '../../data/model/anime_model.dart';

class AnimeDataItme extends StatelessWidget {
  final Anime animeData;
  const AnimeDataItme({
    super.key,
    required this.animeData,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
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
                      SizedBox(
                        height: screenHeight / 3.5,
                        child: AspectRatio(
                          aspectRatio: 1 / 1.2,
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadiusDirectional.circular(16),
                              child: Hero(
                                tag: 'tagImage$index',
                                child: CachedNetworkImage(
                                  imageUrl: animeData
                                      .data![index].images!.jpg!.imageurl
                                      .toString(),
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 0, vertical: 3),
                        child: SizedBox(
                          width: 150,
                          child: Text(
                            animeData.data![index].title.toString(),
                            style: TextStyle(
                                fontSize: screenWidth / 23,
                                fontWeight: FontWeight.w500),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
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
