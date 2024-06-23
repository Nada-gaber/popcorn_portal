import 'package:bloc/bloc.dart';
import '../../data/repo/show_data_repo.dart';
import 'show_data_states.dart';


class ShowCubit extends Cubit<ShowState> {
  final ShowRepo _ShowRepository;

 ShowCubit(this._ShowRepository) : super(ShowDataInitial());

  Future fetchShowData() async {
    emit(ShowDataLoading());
    final showData = await _ShowRepository.getShowData();
    showData.fold((failure) => emit(ShowDataError(failure.message)),
        (showData) => emit(ShowDataLoaded(showData)));
  }
}