// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Anime _$AnimeFromJson(Map<String, dynamic> json) => Anime(
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimeToJson(Anime instance) => <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };
