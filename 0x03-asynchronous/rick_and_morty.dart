
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String?> printRmCharacters() async {
  try {
    String? nextUrl =
        'https://rickandmortyapi.com/api/character';

    while (nextUrl != null) {
      // Demander les personnages à l'API
      final response = await http.get(Uri.parse(nextUrl));

      // Vérifier que la requête a réussi
      if (response.statusCode != 200) {
        throw Exception('Failed to load characters');
      }

      // Transformer le JSON en Map Dart
      final data = jsonDecode(response.body);

      // Récupérer la liste des personnages
      final List<dynamic> characters = data['results'];

      // Afficher le nom de chaque personnage
      for (var character in characters) {
        print(character['name']);
      }

      // Récupérer l'adresse de la page suivante
      nextUrl = data['info']['next'];
    }

    return null;
  } catch (error) {
    return 'error caught: $error';
  }
}
