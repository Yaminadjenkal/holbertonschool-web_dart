
import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Récupérer l'utilisateur
    String userData = await fetchUserData();
    Map<String, dynamic> user = jsonDecode(userData);

    // Récupérer ses commandes
    String id = user['id'];
    String ordersData = await fetchUserOrders(id);
    dynamic decodedOrders = jsonDecode(ordersData);

    // Si aucune commande, le total est 0
    if (decodedOrders == null) {
      return 0.0;
    }

    double total = 0.0;

    // Calculer le prix de chaque produit
    for (String product in decodedOrders) {
      String priceData = await fetchProductPrice(product);
      num price = jsonDecode(priceData);
      total += price.toDouble();
    }

    return total;
  } catch (error) {
    return -1.0;
  }
}

