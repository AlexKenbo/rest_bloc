import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:rest_api_with_bloc/models/card_model.dart';

abstract class CardsDataSource {
  Future<List<CardModel>> getCard();
}

class CardsDataSourceImpl implements CardsDataSource {
  @override
  Future<List<CardModel>> getCard() async {
    final response = await http.get(
        Uri.parse('https://trello.backend.tests.nekidaem.ru/api/v1/cards/'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((json) => CardModel.fromJson(json)).toList();
    } else {
      throw Exception('Fetching cards error');
    }
  }
}