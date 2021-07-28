// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'barcode_camera_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BarcodeCameraScreenStateTearOff {
  const _$BarcodeCameraScreenStateTearOff();

  _BarcodeCameraScreenState call({String barcode = ''}) {
    return _BarcodeCameraScreenState(
      barcode: barcode,
    );
  }
}

/// @nodoc
const $BarcodeCameraScreenState = _$BarcodeCameraScreenStateTearOff();

/// @nodoc
mixin _$BarcodeCameraScreenState {
  String get barcode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BarcodeCameraScreenStateCopyWith<BarcodeCameraScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarcodeCameraScreenStateCopyWith<$Res> {
  factory $BarcodeCameraScreenStateCopyWith(BarcodeCameraScreenState value,
          $Res Function(BarcodeCameraScreenState) then) =
      _$BarcodeCameraScreenStateCopyWithImpl<$Res>;
  $Res call({String barcode});
}

/// @nodoc
class _$BarcodeCameraScreenStateCopyWithImpl<$Res>
    implements $BarcodeCameraScreenStateCopyWith<$Res> {
  _$BarcodeCameraScreenStateCopyWithImpl(this._value, this._then);

  final BarcodeCameraScreenState _value;
  // ignore: unused_field
  final $Res Function(BarcodeCameraScreenState) _then;

  @override
  $Res call({
    Object? barcode = freezed,
  }) {
    return _then(_value.copyWith(
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BarcodeCameraScreenStateCopyWith<$Res>
    implements $BarcodeCameraScreenStateCopyWith<$Res> {
  factory _$BarcodeCameraScreenStateCopyWith(_BarcodeCameraScreenState value,
          $Res Function(_BarcodeCameraScreenState) then) =
      __$BarcodeCameraScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({String barcode});
}

/// @nodoc
class __$BarcodeCameraScreenStateCopyWithImpl<$Res>
    extends _$BarcodeCameraScreenStateCopyWithImpl<$Res>
    implements _$BarcodeCameraScreenStateCopyWith<$Res> {
  __$BarcodeCameraScreenStateCopyWithImpl(_BarcodeCameraScreenState _value,
      $Res Function(_BarcodeCameraScreenState) _then)
      : super(_value, (v) => _then(v as _BarcodeCameraScreenState));

  @override
  _BarcodeCameraScreenState get _value =>
      super._value as _BarcodeCameraScreenState;

  @override
  $Res call({
    Object? barcode = freezed,
  }) {
    return _then(_BarcodeCameraScreenState(
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BarcodeCameraScreenState implements _BarcodeCameraScreenState {
  const _$_BarcodeCameraScreenState({this.barcode = ''});

  @JsonKey(defaultValue: '')
  @override
  final String barcode;

  @override
  String toString() {
    return 'BarcodeCameraScreenState(barcode: $barcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BarcodeCameraScreenState &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality().equals(other.barcode, barcode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(barcode);

  @JsonKey(ignore: true)
  @override
  _$BarcodeCameraScreenStateCopyWith<_BarcodeCameraScreenState> get copyWith =>
      __$BarcodeCameraScreenStateCopyWithImpl<_BarcodeCameraScreenState>(
          this, _$identity);
}

abstract class _BarcodeCameraScreenState implements BarcodeCameraScreenState {
  const factory _BarcodeCameraScreenState({String barcode}) =
      _$_BarcodeCameraScreenState;

  @override
  String get barcode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BarcodeCameraScreenStateCopyWith<_BarcodeCameraScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
