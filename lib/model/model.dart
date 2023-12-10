// ignore_for_file: non_constant_identifier_names

class GameModel {
  final String id;
  final String image;
  final String game_name;
  final String genre;
  final String platform;
 final String release_date;
 final String description;

  GameModel({
    required this.id,
    required this.image,
    required this.game_name,
    required this.genre,
    required this.platform,
    required this.release_date,
    required this.description,
  });

  factory GameModel.fromJson(String id, Map<String, dynamic> json) {
  return GameModel(
    id: id,
    image: json['image'],
    game_name: json['game_name'],
    genre: json['genre'],
    platform: json['platform'],
    release_date: json['release_date'],
    description: json['description'],
  );
}

}