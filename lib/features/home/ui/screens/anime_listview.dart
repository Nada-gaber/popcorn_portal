import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:popcorn_portal/core/networking/web_services.dart';
import 'package:popcorn_portal/features/home/data/repo/anime_data_repo.dart';
import 'package:popcorn_portal/features/home/logic/cubit/anime_data_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popcorn_portal/features/home/logic/cubit/anime_data_states.dart';
import 'package:popcorn_portal/features/home/ui/widgets/anime_listview/anime_data_item_widget.dart';


class AnimeDataListView extends StatelessWidget {
  const AnimeDataListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = AnimeDataCubit(AnimeDataRepo(WebServices(Dio())));
        cubit.fetchAnimeData();
        return cubit;
      },
      child: Scaffold(
        body: BlocBuilder<AnimeDataCubit, AnimeDataState>(
          builder: (context, state) {
            if (state is AnimeDataInitial) {
              return const Center(
                  child: CircularProgressIndicator(
                strokeWidth: 2,
              ));
            } else if (state is AnimeDataLoading) {
              return const Center(
                  child: CircularProgressIndicator(
                strokeWidth: 2,
              ));
            } else if (state is AnimeDataLoaded) {
              final animeData = state.animeData;
              return AnimeDataItme(animeData: animeData);
            
            } else if (state is AnimeDataError) {
              return Text('cute error :${state.error.toString()}');
            } else {
              return Text('Unexpected state: $state');
            }
          },
        ),
      ),
    );
  }
}
