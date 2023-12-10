// ignore_for_file: use_key_in_widget_constructors, prefer_final_fields, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:game_release/screen/detailpage.dart';
import 'package:game_release/screen/month/April.dart';
import 'package:game_release/screen/month/August.dart';
import 'package:game_release/screen/month/January.dart';
import 'package:game_release/screen/month/July.dart';
import 'package:game_release/screen/month/June.dart';
import 'package:game_release/screen/month/May.dart';
import 'package:game_release/screen/month/November.dart';
import 'package:game_release/screen/month/October.dart';
import 'package:game_release/screen/month/September.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/model.dart';
import '../service/api_service.dart';
import '../widget/category.dart';
import 'month/December.dart';
import 'month/February.dart';
import 'month/March.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiEverything _apiEverything = ApiEverything();
  late Map<String, dynamic> _everythingData;
  List<GameModel> _filteredGameList = [];

  @override
  void initState() {
    super.initState();
    _fetchGameData();
  }

  Future<void> _fetchGameData() async {
    try {
      _everythingData = await _apiEverything.fetchEverythingData();

      // ignore: unnecessary_null_comparison
      if (_everythingData != null) {
        _filteredGameList.addAll(_everythingData.entries
            .map((entry) => GameModel.fromJson(entry.key, entry.value))
            .toList()); // Take only the first 10 elements
        setState(() {});
      } else {
        // Handle the case where _everythingData is null
        print('Error: _everythingData is null');
      }
    } catch (e) {
      // Handle error
      print('Error fetching game data: $e');
    }
  }

  void _filterGameList(String query) {
    _filteredGameList.clear();
    if (query.isEmpty) {
      _filteredGameList.addAll(_everythingData.entries
          .map((entry) => GameModel.fromJson(entry.key, entry.value))
          .toList());
    } else {
      _filteredGameList.addAll(
        _everythingData.entries
            .map((entry) => GameModel.fromJson(entry.key, entry.value))
            .where(
              (Game) =>
                  Game.game_name.toLowerCase().contains(query.toLowerCase()),
            )
            .toList(),
      );
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 70,
                    width: double.infinity,
                    color: Color.fromARGB(255, 47, 13, 172),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "List Your Game!",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 45,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: TextField(
                            textAlign: TextAlign.justify,
                            cursorHeight: 10,
                            autofocus: false,
                            onChanged: (query) {
                              _filterGameList(query);
                            },
                            decoration: InputDecoration(
                              hintText: "Search Game Here",
                              prefixIcon: const Icon(Icons.search),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(35),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        category(
                          title: "Jan",
                          detail: JanuaryPage(),
                        ),
                        category(
                          title: "Feb",
                          detail: FebruaryPage(),
                        ),
                        category(
                          title: "Mar",
                          detail: MarchPage(),
                        ),
                        category(
                          title: "Apr",
                          detail: AprilPage(),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        category(
                          title: "May",
                          detail: MayPage(),
                        ),
                        category(
                          title: "Jun",
                          detail: JunePage(),
                        ),
                        category(
                          title: "Jul",
                          detail: JulyPage(),
                        ),
                        category(
                          title: "Aug",
                          detail: AugustPage(),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        category(
                          title: "Sep",
                          detail: SeptemberPage(),
                        ),
                        category(
                          title: "Oct",
                          detail: OctoberPage(),
                        ),
                        category(
                          title: "Nov",
                          detail: NovemberPage(),
                        ),
                        category(
                          title: "Dec",
                          detail: DecemberPage(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "List Game",
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _buildGameList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGameList() {
    if (_filteredGameList.isEmpty) {
      return const Center(
        child: Text('No matching Game found.'),
      );
    } else {
      return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _filteredGameList.length,
        itemBuilder: (context, index) {
          GameModel Game = _filteredGameList[index];
          return Card(
            color: Colors.grey,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 10,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Game.game_name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text('Genre: ${Game.genre}'),
                  Text('Platform: ${Game.platform}'),
                  Text('Release Date: ${Game.release_date}'),
                ],
              ),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                // ignore: unnecessary_null_comparison
                child: Game.image != null
                    ? Image.network(
                        Game.image,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      )
                    : const SizedBox.shrink(),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      game: Game,
                    ),
                  ),
                );
              },
            ),
          );
        },
      );
    }
  }
}
