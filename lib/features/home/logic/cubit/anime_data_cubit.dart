import 'package:bloc/bloc.dart';
import 'package:popcorn_portal/features/home/data/repo/anime_data_repo.dart';

import 'anime_data_states.dart';

class AnimeDataCubit extends Cubit<AnimeDataState> {
  final AnimeDataRepo _AnimeDataRepository;

  AnimeDataCubit(this._AnimeDataRepository) : super(AnimeDataInitial());

  Future fetchAnimeData() async {
    emit(AnimeDataLoading());
    final animeData = await _AnimeDataRepository.getAnimeData();
    animeData.fold((failure) => emit(AnimeDataError(failure.message)),
        (animeData) => emit(AnimeDataLoaded(animeData)));
  }
}


