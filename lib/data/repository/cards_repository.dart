import 'package:rest_api_with_bloc/data/datasource/cards_datasource.dart';
import 'package:rest_api_with_bloc/models/card_model.dart';

abstract class CardsRepository {
  Future<List<CardModel>> getAllCards();
}

class CardsRepositoryImpl extends CardsRepository {
  CardsRepositoryImpl({required this.cardsDataSource});
  final CardsDataSource cardsDataSource;
  
  @override
  Future<List<CardModel>> getAllCards() => cardsDataSource.getCard();
}
