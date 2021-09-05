part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.loadInProgress() = _LoadInProgress;
  const factory HomePageState.loadFailure(String errorText) = _LoadFailure;
  const factory HomePageState.loadSuccess() = _LoadSuccess;
}
