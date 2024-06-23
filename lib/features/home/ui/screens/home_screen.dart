import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popcorn_portal/features/home/ui/screens/anime_listview.dart';
import 'package:popcorn_portal/features/home/ui/screens/show_listview.dart';

import '../widgets/home_app_bar.dart';
import '../widgets/home_search_textfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 22.0, top: 13, right: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppBar(),
              const SizedBox(
                height: 5,
              ),
              const SearchTextField(),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Popular movies',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height / 1.9,
                  child: const AnimeDataListView()),
              const SizedBox(height: 20, child: ShowDataScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
