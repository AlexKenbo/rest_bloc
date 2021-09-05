import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(_LoadInProgress());

  @override
  Stream<HomePageState> mapEventToState(
    HomePageEvent event,
  ) async* {
    yield* event.map(started: (event) async* {
      yield _LoadInProgress();
      try {
        yield _LoadSuccess();
      } catch (e) {
        yield _LoadFailure(e.toString());
      }
    });
  }
}
