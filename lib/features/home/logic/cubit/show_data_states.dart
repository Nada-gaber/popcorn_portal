import 'package:flutter/material.dart';
import '../../data/model/show_model.dart';

@immutable
abstract class ShowState {}

class ShowDataInitial extends ShowState {}

class ShowDataLoading extends ShowState {}

class ShowDataLoaded extends ShowState {
  final Show showData;

  ShowDataLoaded(this.showData);
}

class ShowDataError extends ShowState {
  final String error;

  ShowDataError(this.error);
}
