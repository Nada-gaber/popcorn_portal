class Show {
  String? name;
  String? url;
  String? language;
  Show(
    this.name,
    this.url,
    this.language,
  );

  Show.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    language = json['language'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['url'] = url;
    data['language'] = language;

    return data;
  }
}
