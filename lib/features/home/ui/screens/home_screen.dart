import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:popcorn_portal/core/networking/web_services.dart';
import 'package:popcorn_portal/features/home/data/repo/anime_data_repo.dart';
import 'package:popcorn_portal/features/home/logic/cubit/anime_data_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popcorn_portal/features/home/logic/cubit/anime_data_states.dart';
import 'package:popcorn_portal/features/home/ui/widgets/anime_data_item_widget.dart';

class AnimeDataScreen extends StatelessWidget {
  const AnimeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AnimeDataCubit>(
      create: (context) {
        final cubit = AnimeDataCubit(AnimeDataRepo(WebServices(Dio())));
        cubit.fetchCompanyInfo();
        return cubit;
      },
      child: BlocConsumer<AnimeDataCubit, AnimeDataState>(
        listener: (context, state) {
          if (state is AnimeDataError) {
            final errorState = state;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: $errorState'),
              ),
            );
          }
        },
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
            return Scaffold(
              backgroundColor: Color.fromARGB(255, 7, 3, 26),
              body: SingleChildScrollView(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: animeData.data!.length,
                    itemBuilder: (context, index) {
                      return AnimeDataItme(
                        imageUrl: animeData.data![index].images!.jpg!.imageurl
                            .toString(),
                        title: animeData.data![index].title.toString(),
                        duration: animeData.data![index].duration.toString(),
                        rating: animeData.data![index].rating.toString(),
                        type: animeData.data![index].type.toString(),
                      );
                    },
                  ),
                ),
              ),
            );
          } else if (state is AnimeDataError) {
            return const Text('Error fetching data.');
          } else {
            return Text('Unexpected state: $state');
          }
        },
      ),
    );
  }
}
