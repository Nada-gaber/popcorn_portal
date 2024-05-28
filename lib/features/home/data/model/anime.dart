import 'package:popcorn_portal/features/home/data/model/data_images.dart';

class Data {
  int? malid;
  String? url;
  Images? images;
  String? title;
  String? titleEnglish;
  String? titleJapanese;
  bool? approved;
  String? duration;
  String? rating;
  num? score;
  String? type;
  String? source;
  num? episodes;
  String? status;
  num? members;
  num? favorites;
  num? scoredBy;
  num? rank;
  num? popularity;
  String? season;
  num? year;

  Data(
      {this.malid,
      this.url,
      this.images,
      this.title,
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

  Data.fromJson(Map<String, dynamic> json) {
    malid = json['mal_id'];
    url = json['url'];
    images = json['images'] != null ? Images?.fromJson(json['images']) : null;
    title = json['title'];
    titleEnglish = json['titleEnglish'];
    titleJapanese = json['titleJapanese'];
    approved = json['approved'];
    duration = json['duration'];
    rating = json['rating'];
    score = json['score'];
    type = json['type'];
    source = json['source'];
    episodes = json['episodes'];
    status = json['status'];
    members = json['members'];
    favorites = json['favorites'];
    scoredBy = json['scoredBy'];
    rank = json['rank'];
    popularity = json['popularity'];
    season = json['season'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['mal_id'] = malid;
    data['url'] = url;
    data['images'] = images!.toJson();
    data['title'] = title;
    data['titleEnglish'] = titleEnglish;
    data['titleJapanese'] = titleJapanese;
    data['approved'] = approved;
    data['duration'] = duration;
    data['rating'] = rating;
    data['score'] = score;
    data['type'] = type;
    data['source'] = source;
    data['episodes'] = episodes;
    data['status'] = status;
    data['members'] = members;
    data['favorites'] = favorites;
    data['scoredBy'] = scoredBy;
    data['rank'] = rank;
    data['popularity'] = popularity;
    data['season'] = season;
    data['year'] = year;

    return data;
  }
}
