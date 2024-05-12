class Images {
  Jpg? jpg;
  Webp? webp;

  Images({this.jpg, this.webp});

  Images.fromJson(Map<String, dynamic> json) {
    jpg = json['jpg'] != null ? Jpg?.fromJson(json['jpg']) : null;
    webp = json['webp'] != null ? Webp?.fromJson(json['webp']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['jpg'] = jpg!.toJson();
    data['webp'] = webp!.toJson();
    return data;
  }
}

class Jpg {
  String? imageurl;
  String? smallimageurl;
  String? largeimageurl;

  Jpg({this.imageurl, this.smallimageurl, this.largeimageurl});

  Jpg.fromJson(Map<String, dynamic> json) {
    imageurl = json['image_url'];
    smallimageurl = json['small_image_url'];
    largeimageurl = json['large_image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['image_url'] = imageurl;
    data['small_image_url'] = smallimageurl;
    data['large_image_url'] = largeimageurl;
    return data;
  }
}

class Webp {
  String? imageurl;
  String? smallimageurl;
  String? largeimageurl;

  Webp({this.imageurl, this.smallimageurl, this.largeimageurl});

  Webp.fromJson(Map<String, dynamic> json) {
    imageurl = json['image_url'];
    smallimageurl = json['small_image_url'];
    largeimageurl = json['large_image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['image_url'] = imageurl;
    data['small_image_url'] = smallimageurl;
    data['large_image_url'] = largeimageurl;
    return data;
  }
}
