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
        Uri.parse('https://trello.backend.tests.nekidaem.ru/api/v1/cards/?format=json'),
        headers: {
          'Authorization': 'JWT eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo4MTgsInVzZXJuYW1lIjoidXNlcjEyM2FiYyIsImV4cCI6MTYzMDkxODYyMCwiZW1haWwiOiJ1c2VyMTIzYWJjQGV4YW1wbGUuY29tIiwib3JpZ19pYXQiOjE2MzA5MTUwMjB9.LcOu_kebdZr-zGG0mkqGcAnzssPphvqNLzQfxzrc_54',
        },
        );

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((json) => CardModel.fromJson(json)).toList();
    } else {
      throw Exception('Fetching cards error');
    }
  }
}