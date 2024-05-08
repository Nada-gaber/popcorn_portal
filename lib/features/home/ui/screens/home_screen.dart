import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text('hi dude'),
//     );
//   }
// }
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../data/model/anime_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Anime?> fetchAnimeData() async {
    final response =
        await http.get(Uri.parse('https://api.jikan.moe/v4/anime'));
    if (response.statusCode == 200 && response.body.isNotEmpty) {
      return Anime.fromJson(jsonDecode(response.body));
    } else {
      // Handle error
      print('Failed to load anime data');
      // return
      try {
        return Anime.fromJson(jsonDecode(response.body));
      } on FormatException catch (e) {
        // Handle JSON decode error
        print('Failed to decode JSON: $e');
        return null;
      }
    }
  }

  Anime? animeData;

  @override
  void initState() {
    super.initState();
    fetchAnimeData().then((data) => setState(() {
          animeData = data;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Jikan API Test'),
        ),
        body: Center(
          child: animeData == null
              ? const CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 16.0),
                    if (animeData!
                        .data!.isNotEmpty) // Use null-conditional operator
                      Text(
                        'First Anime Title: ${animeData!.data![0].title}',
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    Text(
                      'First Anime Title: ${animeData!.data![0].episodes}',
                      style: const TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      'First Anime Title: ${animeData!.data![0].rank}',
                      style: const TextStyle(fontSize: 18.0),
                    ),
                    Text(animeData!.pagination!.items!.count.toString()),
                    Text(animeData!.data![0].images!.jpg!.imageUrl.toString())
                  ],
                ),
        ),
      ),
    );
  }
}
