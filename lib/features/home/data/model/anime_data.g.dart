// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      title: json['title'] as String?,
      url: json['url'] as String?,
      images: json['images'] == null
          ? null
          : Images.fromJson(json['images'] as Map<String, dynamic>),
      titleEnglish: json['titleEnglish'] as String?,
      titleJapanese: json['titleJapanese'] as String?,
      approved: json['approved'] as bool?,
      duration: json['duration'] as String?,
      rating: json['rating'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      type: json['type'] as String?,
      source: json['source'] as String?,
      episodes: (json['episodes'] as num?)?.toInt(),
      status: json['status'] as String?,
      members: (json['members'] as num?)?.toInt(),
      favorites: (json['favorites'] as num?)?.toInt(),
      scoredBy: (json['scoredBy'] as num?)?.toInt(),
      rank: (json['rank'] as num?)?.toInt(),
      popularity: (json['popularity'] as num?)?.toInt(),
      season: json['season'] as String?,
      year: (json['year'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'images': instance.images,
      'titleEnglish': instance.titleEnglish,
      'titleJapanese': instance.titleJapanese,
      'approved': instance.approved,
      'duration': instance.duration,
      'rating': instance.rating,
      'score': instance.score,
      'type': instance.type,
      'source': instance.source,
      'episodes': instance.episodes,
      'status': instance.status,
      'members': instance.members,
      'favorites': instance.favorites,
      'scoredBy': instance.scoredBy,
      'rank': instance.rank,
      'popularity': instance.popularity,
      'season': instance.season,
      'year': instance.year,
    };
