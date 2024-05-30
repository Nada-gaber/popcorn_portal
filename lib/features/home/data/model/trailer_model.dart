class Trailer {
  String? url;
  // ImagesTrailer? images;

  Trailer({
    this.url,
    // this.images,
  });
  Trailer.fromJson(Map<String, dynamic> json) {
    url = json['url'];

    // images:
    // ImagesTrailer.fromJson(json['images'] as Map<String, dynamic>);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['url'] = url;
    // data['images'] = images!.toJson();

    return data;
  }
}

class ImagesTrailer {
  String? imageUrl;
  String? smallImageUrl;
  String? mediumImageUrl;
  String? largeImageUrl;
  String? maximumImageUrl;

  ImagesTrailer({
    this.imageUrl,
    this.smallImageUrl,
    this.mediumImageUrl,
    this.largeImageUrl,
    this.maximumImageUrl,
  });

  factory ImagesTrailer.fromJson(Map<String, dynamic> json) => ImagesTrailer(
        imageUrl: json['image_url'],
        smallImageUrl: json['small_image_url'],
        mediumImageUrl: json['medium_image_url'],
        largeImageUrl: json['large_image_url'],
        maximumImageUrl: json['maximum_image_url'],
      );
}
