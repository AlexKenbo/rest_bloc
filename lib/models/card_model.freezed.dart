// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardModel _$CardModelFromJson(Map<String, dynamic> json) {
  return _CardModel.fromJson(json);
}

/// @nodoc
class _$CardModelTearOff {
  const _$CardModelTearOff();

  _CardModel call(
      {required int id, required String row, required String text}) {
    return _CardModel(
      id: id,
      row: row,
      text: text,
    );
  }

  CardModel fromJson(Map<String, Object> json) {
    return CardModel.fromJson(json);
  }
}

/// @nodoc
const $CardModel = _$CardModelTearOff();

/// @nodoc
mixin _$CardModel {
  int get id => throw _privateConstructorUsedError;
  String get row => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardModelCopyWith<CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardModelCopyWith<$Res> {
  factory $CardModelCopyWith(CardModel value, $Res Function(CardModel) then) =
      _$CardModelCopyWithImpl<$Res>;
  $Res call({int id, String row, String text});
}

/// @nodoc
class _$CardModelCopyWithImpl<$Res> implements $CardModelCopyWith<$Res> {
  _$CardModelCopyWithImpl(this._value, this._then);

  final CardModel _value;
  // ignore: unused_field
  final $Res Function(CardModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? row = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      row: row == freezed
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CardModelCopyWith<$Res> implements $CardModelCopyWith<$Res> {
  factory _$CardModelCopyWith(
          _CardModel value, $Res Function(_CardModel) then) =
      __$CardModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String row, String text});
}

/// @nodoc
class __$CardModelCopyWithImpl<$Res> extends _$CardModelCopyWithImpl<$Res>
    implements _$CardModelCopyWith<$Res> {
  __$CardModelCopyWithImpl(_CardModel _value, $Res Function(_CardModel) _then)
      : super(_value, (v) => _then(v as _CardModel));

  @override
  _CardModel get _value => super._value as _CardModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? row = freezed,
    Object? text = freezed,
  }) {
    return _then(_CardModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      row: row == freezed
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardModel extends _CardModel {
  _$_CardModel({required this.id, required this.row, required this.text})
      : super._();

  factory _$_CardModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CardModelFromJson(json);

  @override
  final int id;
  @override
  final String row;
  @override
  final String text;

  @override
  String toString() {
    return 'CardModel(id: $id, row: $row, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.row, row) ||
                const DeepCollectionEquality().equals(other.row, row)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(row) ^
      const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$CardModelCopyWith<_CardModel> get copyWith =>
      __$CardModelCopyWithImpl<_CardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CardModelToJson(this);
  }
}

abstract class _CardModel extends CardModel {
  factory _CardModel(
      {required int id,
      required String row,
      required String text}) = _$_CardModel;
  _CardModel._() : super._();

  factory _CardModel.fromJson(Map<String, dynamic> json) =
      _$_CardModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get row => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CardModelCopyWith<_CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
