// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
class _$RoomTearOff {
  const _$RoomTearOff();

  _Room call({required String id}) {
    return _Room(
      id: id,
    );
  }

  Room fromJson(Map<String, Object?> json) {
    return Room.fromJson(json);
  }
}

/// @nodoc
const $Room = _$RoomTearOff();

/// @nodoc
mixin _$Room {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$RoomCopyWithImpl<$Res> implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  final Room _value;
  // ignore: unused_field
  final $Res Function(Room) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$RoomCopyWith(_Room value, $Res Function(_Room) then) =
      __$RoomCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res>
    implements _$RoomCopyWith<$Res> {
  __$RoomCopyWithImpl(_Room _value, $Res Function(_Room) _then)
      : super(_value, (v) => _then(v as _Room));

  @override
  _Room get _value => super._value as _Room;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Room(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Room implements _Room {
  const _$_Room({required this.id});

  factory _$_Room.fromJson(Map<String, dynamic> json) => _$$_RoomFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'Room(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Room &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  _$RoomCopyWith<_Room> get copyWith =>
      __$RoomCopyWithImpl<_Room>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomToJson(this);
  }
}

abstract class _Room implements Room {
  const factory _Room({required String id}) = _$_Room;

  factory _Room.fromJson(Map<String, dynamic> json) = _$_Room.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$RoomCopyWith<_Room> get copyWith => throw _privateConstructorUsedError;
}
