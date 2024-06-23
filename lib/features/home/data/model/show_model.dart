//It's List of Shows inside of it a List of Maps
import 'package:json_annotation/json_annotation.dart';

part 'show_model.g.dart';

@JsonSerializable()
class Show {
  final String name;


  Show({
    required this.name,

  });

  factory Show.fromJson(Map<String, dynamic> json) => _$ShowFromJson(json);
  Map<String, dynamic> toJson() => _$ShowToJson(this);
}


// class Show {
//   int? id;
//   String? url;
//   String? name;
//   String? type;
//   String? language;
//   String? status;
//   int? runtime;
//   int? averageRuntime;
//   String? officialSite;
//   int? weight;
//   dynamic webChannel;
//   dynamic dvdCountry;
//   String? summary;
//   int? updated;

//   Show({
//     this.id,
//     this.url,
//     this.name,
//     this.type,
//     this.language,
//     this.status,
//     this.runtime,
//     this.averageRuntime,
//     this.officialSite,
//     this.weight,
//     this.webChannel,
//     this.dvdCountry,
//     this.summary,
//     this.updated,
//   });

//   Show.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     url = json['url'];
//     name = json['name'];
//     type = json['type'];
//     language = json['language'];
//     status = json['status'];
//     runtime = json['runtime'];
//     averageRuntime = json['averageRuntime'];
//     officialSite = json['officialSite'];
//     weight = json['weight'];
//     webChannel = json['webChannel'];
//     dvdCountry = json['dvdCountry'];
//     summary = json['summary'];
//     updated = json['updated'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['id'] = id;
//     data['url'] = url;
//     data['name'] = name;
//     data['type'] = type;
//     data['language'] = language;
//     data['status'] = status;
//     data['runtime'] = runtime;
//     data['averageRuntime'] = averageRuntime;
//     data['officialSite'] = officialSite;
//     data['weight'] = weight;
//     data['webChannel'] = webChannel;
//     data['dvdCountry'] = dvdCountry;
//     data['summary'] = summary;
//     data['updated'] = updated;

//     return data;
//   }
// }

// class Show {
//   String? name;
//   String? url;
//   String? language;
//   Show(
//     this.name,
//     this.url,
//     this.language,
//   );

//   Show.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     url = json['url'];
//     language = json['language'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['name'] = name;
//     data['url'] = url;
//     data['language'] = language;

//     return data;
//   }
// }
