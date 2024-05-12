import 'package:bloc/bloc.dart';
import 'package:popcorn_portal/features/home/data/repo/anime_data_repo.dart';

import 'anime_data_states.dart';

class AnimeDataCubit extends Cubit<AnimeDataState> {
  final AnimeDataRepo _AnimeDataRepository;

  AnimeDataCubit(this._AnimeDataRepository): super(AnimeDataInitial());

  Future<void> fetchCompanyInfo() async {
    emit( AnimeDataLoading());
    try {
      final animeData = await _AnimeDataRepository.getAnimeData();
      emit(AnimeDataLoaded(animeData ));
    } on Exception catch (error) {
      emit(AnimeDataError(error.toString()));
    }
  }
}