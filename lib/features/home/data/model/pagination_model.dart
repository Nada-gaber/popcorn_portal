import 'package:json_annotation/json_annotation.dart';

import 'anime_model.dart';

part 'pagination_model.g.dart';

@JsonSerializable()
class Pagination {
  Pagination({
    this.lastVisiblePage,
    this.hasNextPage,
    this.currentPage,
    this.items,
  });
  int? lastVisiblePage;
  bool? hasNextPage;
  int? currentPage;
  Items? items;
  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}
