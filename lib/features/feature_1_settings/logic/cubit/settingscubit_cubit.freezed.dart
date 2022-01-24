// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settingscubit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingState _$SettingStateFromJson(Map<String, dynamic> json) {
  return _SettingState.fromJson(json);
}

/// @nodoc
class _$SettingStateTearOff {
  const _$SettingStateTearOff();

  _SettingState call(
      {required bool appNotification, required bool emailNotification}) {
    return _SettingState(
      appNotification: appNotification,
      emailNotification: emailNotification,
    );
  }

  SettingState fromJson(Map<String, Object?> json) {
    return SettingState.fromJson(json);
  }
}

/// @nodoc
const $SettingState = _$SettingStateTearOff();

/// @nodoc
mixin _$SettingState {
  bool get appNotification => throw _privateConstructorUsedError;
  bool get emailNotification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res>;
  $Res call({bool appNotification, bool emailNotification});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res> implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  final SettingState _value;
  // ignore: unused_field
  final $Res Function(SettingState) _then;

  @override
  $Res call({
    Object? appNotification = freezed,
    Object? emailNotification = freezed,
  }) {
    return _then(_value.copyWith(
      appNotification: appNotification == freezed
          ? _value.appNotification
          : appNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      emailNotification: emailNotification == freezed
          ? _value.emailNotification
          : emailNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SettingStateCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$SettingStateCopyWith(
          _SettingState value, $Res Function(_SettingState) then) =
      __$SettingStateCopyWithImpl<$Res>;
  @override
  $Res call({bool appNotification, bool emailNotification});
}

/// @nodoc
class __$SettingStateCopyWithImpl<$Res> extends _$SettingStateCopyWithImpl<$Res>
    implements _$SettingStateCopyWith<$Res> {
  __$SettingStateCopyWithImpl(
      _SettingState _value, $Res Function(_SettingState) _then)
      : super(_value, (v) => _then(v as _SettingState));

  @override
  _SettingState get _value => super._value as _SettingState;

  @override
  $Res call({
    Object? appNotification = freezed,
    Object? emailNotification = freezed,
  }) {
    return _then(_SettingState(
      appNotification: appNotification == freezed
          ? _value.appNotification
          : appNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      emailNotification: emailNotification == freezed
          ? _value.emailNotification
          : emailNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingState implements _SettingState {
  const _$_SettingState(
      {required this.appNotification, required this.emailNotification});

  factory _$_SettingState.fromJson(Map<String, dynamic> json) =>
      _$$_SettingStateFromJson(json);

  @override
  final bool appNotification;
  @override
  final bool emailNotification;

  @override
  String toString() {
    return 'SettingState(appNotification: $appNotification, emailNotification: $emailNotification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingState &&
            const DeepCollectionEquality()
                .equals(other.appNotification, appNotification) &&
            const DeepCollectionEquality()
                .equals(other.emailNotification, emailNotification));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appNotification),
      const DeepCollectionEquality().hash(emailNotification));

  @JsonKey(ignore: true)
  @override
  _$SettingStateCopyWith<_SettingState> get copyWith =>
      __$SettingStateCopyWithImpl<_SettingState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingStateToJson(this);
  }
}

abstract class _SettingState implements SettingState {
  const factory _SettingState(
      {required bool appNotification,
      required bool emailNotification}) = _$_SettingState;

  factory _SettingState.fromJson(Map<String, dynamic> json) =
      _$_SettingState.fromJson;

  @override
  bool get appNotification;
  @override
  bool get emailNotification;
  @override
  @JsonKey(ignore: true)
  _$SettingStateCopyWith<_SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}
