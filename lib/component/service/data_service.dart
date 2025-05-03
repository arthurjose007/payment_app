import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class DataServices {
 Future<List<dynamic>>  getUsers() async {
    try {
      // Load JSON file
      final info = await rootBundle.loadString("json/paymentjson.json");

      // Corrected this line - use json.decode() instead of json.decoder
      List<dynamic> list = json.decode(info) as List;
print(list);
      return  Future.delayed(Duration(seconds: 5),
          ()=>        list.map((e) => e).toList(),

      );

    } catch (e) {
      print("Error loading JSON: $e");
      return []; // Return empty list on error
    }
  }
}