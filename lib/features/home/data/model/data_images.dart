import 'package:json_annotation/json_annotation.dart';
part 'data_images.g.dart';

@JsonSerializable()
class Images {
  Jpg? jpg;
  Webp? webp;
  Images({
    this.jpg,
    this.webp,
  });

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}

@JsonSerializable()
class Jpg {
  String? imageUrl;
  String? smallImageUrl;
  String? largeImageUrl;
  Jpg({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
  });
  factory Jpg.fromJson(Map<String, dynamic> json) => _$JpgFromJson(json);
  Map<String, dynamic> toJson() => _$JpgToJson(this);
}

@JsonSerializable()
class Webp {
  String? imageUrl;
  String? smallImageUrl;
  String? largeImageUrl;
  Webp({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
  });
  factory Webp.fromJson(Map<String, dynamic> json) => _$WebpFromJson(json);
  Map<String, dynamic> toJson() => _$WebpToJson(this);
}
