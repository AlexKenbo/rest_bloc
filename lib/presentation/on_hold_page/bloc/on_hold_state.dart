

part of 'on_hold_bloc.dart';

@freezed
class OnHoldState with _$OnHoldState {
  const factory OnHoldState.loadInProgress() = _LoadInProgress;
  const factory OnHoldState.loadFailure(String errorText) = _LoadFailure;
  const factory OnHoldState.loadSuccess({required List<CardModel> cardModel}) = _LoadSuccess;
}
