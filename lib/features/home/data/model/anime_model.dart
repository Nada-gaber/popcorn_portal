import 'package:json_annotation/json_annotation.dart';

import 'anime_data.dart';
import 'pagination_model.dart';
part 'anime_model.g.dart';

@JsonSerializable()
class Anime {
  Pagination? pagination;
  List<Data>? data;
  Anime({
    this.pagination,
    this.data,
  });
  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);
  Map<String, dynamic> toJson() => _$AnimeToJson(this);

}

class Items {
  Items({
    required this.count,
    required this.total,
    required this.perPage,
  });
  late final int count;
  late final int total;
  late final int perPage;

  Items.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    total = json['total'];
    perPage = json['per_page'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['count'] = count;
    _data['total'] = total;
    _data['per_page'] = perPage;
    return _data;
  }
}

class Titles {
  String? type;
  String? title;
  Titles({
    required this.type,
    required this.title,
  });

  Titles.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['title'] = title;
    return _data;
  }
}

class Images {
  Images({
    required this.jpg,
    required this.webp,
  });
  late final Jpg jpg;
  late final Webp webp;

  Images.fromJson(Map<String, dynamic> json) {
    jpg = Jpg.fromJson(json['jpg']);
    webp = Webp.fromJson(json['webp']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['jpg'] = jpg.toJson();
    _data['webp'] = webp.toJson();
    return _data;
  }
}

class Jpg {
  Jpg({
    required this.imageUrl,
    required this.smallImageUrl,
    required this.largeImageUrl,
  });
  late final String imageUrl;
  late final String smallImageUrl;
  late final String largeImageUrl;

  Jpg.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
    smallImageUrl = json['small_image_url'];
    largeImageUrl = json['large_image_url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['image_url'] = imageUrl;
    _data['small_image_url'] = smallImageUrl;
    _data['large_image_url'] = largeImageUrl;
    return _data;
  }
}

class Webp {
  Webp({
    required this.imageUrl,
    required this.smallImageUrl,
    required this.largeImageUrl,
  });
  late final String imageUrl;
  late final String smallImageUrl;
  late final String largeImageUrl;

  Webp.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
    smallImageUrl = json['small_image_url'];
    largeImageUrl = json['large_image_url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['image_url'] = imageUrl;
    _data['small_image_url'] = smallImageUrl;
    _data['large_image_url'] = largeImageUrl;
    return _data;
  }
}

class Trailer {
  Trailer({
    this.youtubeId,
    this.url,
    this.embedUrl,
    required this.images,
  });
  late final String? youtubeId;
  late final String? url;
  late final String? embedUrl;
  late final Images images;

  Trailer.fromJson(Map<String, dynamic> json) {
    youtubeId = null;
    url = null;
    embedUrl = null;
    images = Images.fromJson(json['images']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['youtube_id'] = youtubeId;
    _data['url'] = url;
    _data['embed_url'] = embedUrl;
    _data['images'] = images.toJson();
    return _data;
  }
}

class Aired {
  Aired({
    required this.from,
    this.to,
    required this.prop,
    required this.string,
  });
  late final String from;
  late final String? to;
  late final Prop prop;
  late final String string;

  Aired.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = null;
    prop = Prop.fromJson(json['prop']);
    string = json['string'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['from'] = from;
    _data['to'] = to;
    _data['prop'] = prop.toJson();
    _data['string'] = string;
    return _data;
  }
}

class Prop {
  Prop({
    required this.from,
    required this.to,
  });
  late final From from;
  late final To to;

  Prop.fromJson(Map<String, dynamic> json) {
    from = From.fromJson(json['from']);
    to = To.fromJson(json['to']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['from'] = from.toJson();
    _data['to'] = to.toJson();
    return _data;
  }
}

class From {
  From({
    required this.day,
    required this.month,
    required this.year,
  });
  late final int day;
  late final int month;
  late final int year;

  From.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    month = json['month'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['day'] = day;
    _data['month'] = month;
    _data['year'] = year;
    return _data;
  }
}

class To {
  To({
    this.day,
    this.month,
    this.year,
  });
  late final int? day;
  late final int? month;
  late final int? year;

  To.fromJson(Map<String, dynamic> json) {
    day = null;
    month = null;
    year = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['day'] = day;
    _data['month'] = month;
    _data['year'] = year;
    return _data;
  }
}

class Broadcast {
  Broadcast({
    this.day,
    this.time,
    this.timezone,
    this.string,
  });
  late final String? day;
  late final String? time;
  late final String? timezone;
  late final String? string;

  Broadcast.fromJson(Map<String, dynamic> json) {
    day = null;
    time = null;
    timezone = null;
    string = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['day'] = day;
    _data['time'] = time;
    _data['timezone'] = timezone;
    _data['string'] = string;
    return _data;
  }
}

class Producers {
  Producers({
    required this.malId,
    required this.type,
    required this.name,
    required this.url,
  });
  late final int malId;
  late final String type;
  late final String name;
  late final String url;

  Producers.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    type = json['type'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['mal_id'] = malId;
    _data['type'] = type;
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class Licensors {
  Licensors({
    required this.malId,
    required this.type,
    required this.name,
    required this.url,
  });
  late final int malId;
  late final String type;
  late final String name;
  late final String url;

  Licensors.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    type = json['type'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['mal_id'] = malId;
    _data['type'] = type;
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class Studios {
  Studios({
    required this.malId,
    required this.type,
    required this.name,
    required this.url,
  });
  late final int malId;
  late final String type;
  late final String name;
  late final String url;

  Studios.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    type = json['type'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['mal_id'] = malId;
    _data['type'] = type;
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class Genres {
  Genres({
    required this.malId,
    required this.type,
    required this.name,
    required this.url,
  });
  late final int malId;
  late final String type;
  late final String name;
  late final String url;

  Genres.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    type = json['type'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['mal_id'] = malId;
    _data['type'] = type;
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class Themes {
  Themes({
    required this.malId,
    required this.type,
    required this.name,
    required this.url,
  });
  late final int malId;
  late final String type;
  late final String name;
  late final String url;

  Themes.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    type = json['type'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['mal_id'] = malId;
    _data['type'] = type;
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}

class Demographics {
  Demographics({
    required this.malId,
    required this.type,
    required this.name,
    required this.url,
  });
  late final int malId;
  late final String type;
  late final String name;
  late final String url;

  Demographics.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    type = json['type'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['mal_id'] = malId;
    _data['type'] = type;
    _data['name'] = name;
    _data['url'] = url;
    return _data;
  }
}
