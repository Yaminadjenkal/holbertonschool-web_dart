
import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // 1. Récupérer les informations de l'utilisateur
    String userData = await fetchUserData();

    // 2. Transformer le JSON en Map
    Map<String, dynamic> user = jsonDecode(userData);

    // 3. Récupérer l'identifiant de l'utilisateur
    String id = user['id'];

    // 4. Récupérer les commandes de cet utilisateur
    String ordersData = await fetchUserOrders(id);

    // 5. Transformer les commandes en liste
    List<dynamic> orders = jsonDecode(ordersData);

    // 6. Créer une variable pour additionner les prix
    double total = 0;

    // 7. Parcourir chaque produit commandé
    for (String product in orders) {
      // Récupérer le prix du produit
      String priceData = await fetchProductPrice(product);

      // Transformer le prix JSON en nombre
      double price = (jsonDecode(priceData) as num).toDouble();

      // Ajouter le prix au total
      total += price;
    }

    // 8. Retourner le total
    return total;
  } catch (error) {
    // En cas d'erreur, retourner -1
    return -1;
  }
}

