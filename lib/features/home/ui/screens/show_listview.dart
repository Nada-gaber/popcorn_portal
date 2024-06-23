import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:popcorn_portal/core/networking/movie_web_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/show_model.dart';
import '../../data/repo/show_data_repo.dart';
import '../../logic/cubit/show_data_cubit.dart';
import '../../logic/cubit/show_data_states.dart';

class ShowDataScreen extends StatelessWidget {
  const ShowDataScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Sample JSON data
    List<Map<String, dynamic>> jsonData = [
      {
        "id": "2a5",
        "employeeNumber": "101",
        "firstName": "Sachin",
        "lastName": "Agrawal"
      },
      {
        "id": "1f7",
        "employeeNumber": "151",
        "firstName": "Karsten",
        "lastName": "Andersen"
      },
    ];

    // Deserialize JSON data to Employee objects

    return BlocProvider(
      create: (context) {
        final cubit = ShowCubit(ShowRepo(WebServicesShow(Dio())));
        cubit.fetchShowData();
        return cubit;
      },
      child: Scaffold(
        body: BlocBuilder<ShowCubit, ShowState>(
          builder: (context, state) {
            if (state is ShowDataInitial) {
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.red,
                strokeWidth: 5,
              ));
            } else if (state is ShowDataLoading) {
              return const Center(
                  child: CircularProgressIndicator(
                strokeWidth: 10,
              ));
            } else if (state is ShowDataLoaded) {
              final showData = state.showData;
              List<Show> employees =
                  jsonData.map((e) => Show.fromJson(e)).toList();

              // Accessing employee data
              employees.forEach((show) {
                print(' Name: ${show.name} ');
              });
              return ListView.builder(
                itemCount: employees.length,
                itemBuilder: (context, index) {
                  Show employee = employees[index];
                  return ListTile(
                    title: Text('${employee.name} '),
                    subtitle: Text('Employee Number: ${employee.name}'),
                  );
                },
              );
            } else if (state is ShowDataError) {
              return Center(
                  child: Text('cute error :${state.error.toString()}'));
            } else {
              return Text('Unexpected state: $state');
            }
          },
        ),
      ),
    );
  }
}
