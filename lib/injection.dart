import 'package:get_it/get_it.dart';
import 'package:rest_api_with_bloc/data/datasource/cards_datasource.dart';
import 'package:rest_api_with_bloc/data/repository/cards_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<CardsDataSource>(
    () => CardsDataSourceImpl(),
  );
  sl.registerLazySingleton<CardsRepository>(
    () => CardsRepositoryImpl(cardsDataSource: sl<CardsDataSource>()),
  );
}
