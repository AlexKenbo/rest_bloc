import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api_with_bloc/data/repository/cards_repository.dart';
import 'package:rest_api_with_bloc/models/card_model.dart';

import '../../../injection.dart';

part 'on_hold_event.dart';
part 'on_hold_state.dart';
part 'on_hold_bloc.freezed.dart';

class OnHoldBloc extends Bloc<OnHoldEvent, OnHoldState> {
  OnHoldBloc() : super(_LoadInProgress()) {
    add(_Started());
  }
  final CardsRepository cardsRepository = sl();
  

  @override
  Stream<OnHoldState> mapEventToState(
    OnHoldEvent event,
  ) async* {
    yield* event.map(
      started: (event) async* {
        yield _LoadInProgress();
        try {
          final card = await cardsRepository.getAllCards();
          yield _LoadSuccess(cardModel: card);
        } catch (e) {
          yield _LoadFailure(e.toString());
        }
      },
    );
  }
}
