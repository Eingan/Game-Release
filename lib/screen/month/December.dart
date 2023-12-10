// ignore_for_file: prefer_final_fields, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:game_release/model/model.dart';

import '../../service/api_service.dart';
import '../detailpage.dart';

class DecemberPage extends StatefulWidget {
  @override
  State<DecemberPage> createState() => _DecemberPageState();
}

class _DecemberPageState extends State<DecemberPage> {
  ApiDecember _apiDecember = ApiDecember();
  late Map<String, dynamic> _DecemberData;
  List<GameModel> _filteredGameList = [];

  @override
  void initState() {
    super.initState();
    _fetchDecemberData();
  }

  Future<void> _fetchDecemberData() async {
    try {
      _DecemberData = await _apiDecember.fetchDecemberData();
     _filteredGameList.addAll(_DecemberData.entries
          .map((entry) => GameModel.fromJson(entry.key, entry.value))
          .toList());
      setState(() {});
    } catch (e) {
      // Handle error
      print('Error fetching game data: $e');
    }
  }

  void _filterGameList(String query) {
    _filteredGameList.clear();
    if (query.isEmpty) {
      _filteredGameList.addAll(_DecemberData.entries
          .map((entry) => GameModel.fromJson(entry.key, entry.value))
          .toList());
    } else {
      _filteredGameList.addAll(
        _DecemberData.entries
            .map((entry) => GameModel.fromJson(entry.key, entry.value))
            .where(
              (game) => game.game_name.toLowerCase().contains(query.toLowerCase()),
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
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 47, 13, 172),
        title: Text("Game Decemeber"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.black,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30),
                        ),
                       child: TextField(
                            cursorHeight: 20,
                            autofocus: false,
                            onChanged: (query) {
                              _filterGameList(query);
                            },
                            decoration: InputDecoration(
                              hintText: "Cari Game",
                              prefixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            _buildGameList()
          ]),
        ),
      ),
    );
  }

  Widget _buildGameList() {
    if (_filteredGameList.isEmpty) {
      return const Center(
        child: Text('No matching game found.'),
      );
    } else {
      return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
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
                child: Image.network(
                  Game.image,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(game: Game,),
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
