import 'package:flutter/material.dart';
import '../../data/model/anime/anime_model.dart';

@immutable
abstract class AnimeDataState {}

class AnimeDataInitial extends AnimeDataState {}

class AnimeDataLoading extends AnimeDataState {}

class AnimeDataLoaded extends AnimeDataState {
  final Anime animeData;

  AnimeDataLoaded(this.animeData);
}

class AnimeDataError extends AnimeDataState {
  final String error;

  AnimeDataError(this.error);
}
