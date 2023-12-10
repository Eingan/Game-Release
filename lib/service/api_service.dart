// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiEverything {
  final String apiUrl =
      "https://gamerelease-c997a-default-rtdb.firebaseio.com/gamedata.json";

  Future<Map<String, dynamic>> fetchEverythingData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // Berhasil mendapatkan response dari API
      Map<String, dynamic> data = json.decode(response.body);

      // Mengambil data everything game
      Map<String, dynamic> gameEverything = data['Everything'];

      return gameEverything;
    } else {
     
      throw Exception('Failed to load game data');
    }
  }
}

class ApiJanuary {
  final String apiUrl =
      "https://gamerelease-c997a-default-rtdb.firebaseio.com/gamedata.json";

  Future<Map<String, dynamic>> fetchJanuaryData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // Berhasil mendapatkan response dari API
      Map<String, dynamic> data = json.decode(response.body);

      // Mengambil data January game
      Map<String, dynamic> gameJanuary = data['January'];

      return gameJanuary;
    } else {
     
      throw Exception('Failed to load game data');
    }
  }
}

class ApiFebruary {
  final String apiUrl =
      "https://gamerelease-c997a-default-rtdb.firebaseio.com/gamedata.json";

  Future<Map<String, dynamic>> fetchFebruaryData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // Berhasil mendapatkan response dari API
      Map<String, dynamic> data = json.decode(response.body);

      // Mengambil data February game
      Map<String, dynamic> GameFebruary = data['February'];

      return GameFebruary;
    } else {
     
      throw Exception('Failed to load game data');
    }
  }
}

class ApiMarch {
  final String apiUrl =
      "https://gamerelease-c997a-default-rtdb.firebaseio.com/gamedata.json";

  Future<Map<String, dynamic>> fetchMarchData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // Berhasil mendapatkan response dari API
      Map<String, dynamic> data = json.decode(response.body);

      // Mengambil data March game
      Map<String, dynamic> GameMarch = data['March'];

      return GameMarch;
    } else {
     
      throw Exception('Failed to load game data');
    }
  }
}

class ApiApril {
  final String apiUrl =
      "https://gamerelease-c997a-default-rtdb.firebaseio.com/gamedata.json";

  Future<Map<String, dynamic>> fetchAprilData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // Berhasil mendapatkan response dari API
      Map<String, dynamic> data = json.decode(response.body);

      // Mengambil data April game
      Map<String, dynamic> GameApril = data['April'];

      return GameApril;
    } else {
     
      throw Exception('Failed to load game data');
    }
  }
}

class ApiMay {
  final String apiUrl =
      "https://gamerelease-c997a-default-rtdb.firebaseio.com/gamedata.json";

  Future<Map<String, dynamic>> fetchMayData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // Berhasil mendapatkan response dari API
      Map<String, dynamic> data = json.decode(response.body);

      // Mengambil data May game
      Map<String, dynamic> GameMay = data['May'];

      return GameMay;
    } else {
     
      throw Exception('Failed to load game data');
    }
  }
}

class ApiJune {
  final String apiUrl =
      "https://gamerelease-c997a-default-rtdb.firebaseio.com/gamedata.json";

  Future<Map<String, dynamic>> fetchJuneData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // Berhasil mendapatkan response dari API
      Map<String, dynamic> data = json.decode(response.body);

      // Mengambil data June game
      Map<String, dynamic> GameJune = data['June'];

      return GameJune;
    } else {
     
      throw Exception('Failed to load game data');
    }
  }
}

class ApiJuly {
  final String apiUrl =
      "https://gamerelease-c997a-default-rtdb.firebaseio.com/gamedata.json";

  Future<Map<String, dynamic>> fetchJulyData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // Berhasil mendapatkan response dari API
      Map<String, dynamic> data = json.decode(response.body);

      // Mengambil data July game
      Map<String, dynamic> GameJuly = data['July'];

      return GameJuly;
    } else {
     
      throw Exception('Failed to load game data');
    }
  }
}

class ApiAugust {
  final String apiUrl =
      "https://gamerelease-c997a-default-rtdb.firebaseio.com/gamedata.json";

  Future<Map<String, dynamic>> fetchAugustData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // Berhasil mendapatkan response dari API
      Map<String, dynamic> data = json.decode(response.body);

      // Mengambil data August game
      Map<String, dynamic> GameAugust = data['August'];

      return GameAugust;
    } else {
     
      throw Exception('Failed to load game data');
    }
  }
}

class ApiSeptember {
  final String apiUrl =
      "https://gamerelease-c997a-default-rtdb.firebaseio.com/gamedata.json";

  Future<Map<String, dynamic>> fetchSeptemberData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // Berhasil mendapatkan response dari API
      Map<String, dynamic> data = json.decode(response.body);

      // Mengambil data September game
      Map<String, dynamic> GameSeptember = data['September'];

      return GameSeptember;
    } else {
     
      throw Exception('Failed to load game data');
    }
  }
}

class ApiOctober {
  final String apiUrl =
      "https://gamerelease-c997a-default-rtdb.firebaseio.com/gamedata.json";

  Future<Map<String, dynamic>> fetchOctoberData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // Berhasil mendapatkan response dari API
      Map<String, dynamic> data = json.decode(response.body);

      // Mengambil data October game
      Map<String, dynamic> GameOctober = data['October'];

      return GameOctober;
    } else {
     
      throw Exception('Failed to load game data');
    }
  }
}

class ApiNovember {
  final String apiUrl =
      "https://gamerelease-c997a-default-rtdb.firebaseio.com/gamedata.json";

  Future<Map<String, dynamic>> fetchNovemberData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // Berhasil mendapatkan response dari API
      Map<String, dynamic> data = json.decode(response.body);

      // Mengambil data November game
      Map<String, dynamic> GameNovember = data['November'];

      return GameNovember;
    } else {
     
      throw Exception('Failed to load game data');
    }
  }
}

class ApiDecember {
  final String apiUrl =
      "https://gamerelease-c997a-default-rtdb.firebaseio.com/gamedata.json";

  Future<Map<String, dynamic>> fetchDecemberData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // Berhasil mendapatkan response dari API
      Map<String, dynamic> data = json.decode(response.body);

      // Mengambil data December game
      Map<String, dynamic> GameDecember = data['December'];

      return GameDecember;
    } else {
     
      throw Exception('Failed to load game data');
    }
  }
}