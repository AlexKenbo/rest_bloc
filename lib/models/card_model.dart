import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
abstract class CardModel implements _$CardModel {
  const CardModel._();

  factory CardModel({
    required int id,
    required String row,
    required String text,
  }) = _CardModel;

  factory CardModel.fromJson(Map<String, dynamic> json) =>
      _$CardModelFromJson(json);
  // Map<String, dynamic> toJson() => _$CardModelToJson(this);
}
