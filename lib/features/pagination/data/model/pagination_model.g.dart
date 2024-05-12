// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      lastVisiblePage: (json['lastVisiblePage'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      currentPage: (json['currentPage'] as num?)?.toInt(),
      items: json['items'] == null
          ? null
          : Items.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'lastVisiblePage': instance.lastVisiblePage,
      'hasNextPage': instance.hasNextPage,
      'currentPage': instance.currentPage,
      'items': instance.items,
    };
