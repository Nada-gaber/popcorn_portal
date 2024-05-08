import 'package:json_annotation/json_annotation.dart';
import 'data_images.dart';
part 'anime_data.g.dart';

@JsonSerializable()
class Data {
  String? title;
  String? url;
  Images? images;
  String? titleEnglish;
  String? titleJapanese;
  bool? approved;
  String? duration;
  String? rating;
  double? score;
  String? type;
  String? source;
  int? episodes;
  String? status;
  int? members;
  int? favorites;
  int? scoredBy;
  int? rank;
  int? popularity;
  String? season;
  int? year;
  Data(
      {this.title,
      this.url,
      this.images,
      this.titleEnglish,
      this.titleJapanese,
      this.approved,
      this.duration,
      this.rating,
      this.score,
      this.type,
      this.source,
      this.episodes,
      this.status,
      this.members,
      this.favorites,
      this.scoredBy,
      this.rank,
      this.popularity,
      this.season,
      this.year});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}




//   int? malId;
//   Trailer? trailer;
//   List<Titles>? titles;
//   List<String>? titleSynonyms;
//   bool? airing;
//   Aired? aired;
//   String? synopsis;
//   String? background;
//   Broadcast? broadcast;
//   List<Producers>? producers;
//   List<Licensors>? licensors;
//   List<Studios>? studios;
//   List<Genres>? genres;
//   List<dynamic>? explicitGenres;
//   List<Themes>? themes;
//   List<Demographics>? demographics;

