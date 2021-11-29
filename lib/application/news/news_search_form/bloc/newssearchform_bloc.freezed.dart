// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'newssearchform_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewssearchformEventTearOff {
  const _$NewssearchformEventTearOff();

  _ChangeSearch changeSearch(String search) {
    return _ChangeSearch(
      search,
    );
  }
}

/// @nodoc
const $NewssearchformEvent = _$NewssearchformEventTearOff();

/// @nodoc
mixin _$NewssearchformEvent {
  String get search => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) changeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String search)? changeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? changeSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSearch value) changeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeSearch value)? changeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSearch value)? changeSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewssearchformEventCopyWith<NewssearchformEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewssearchformEventCopyWith<$Res> {
  factory $NewssearchformEventCopyWith(
          NewssearchformEvent value, $Res Function(NewssearchformEvent) then) =
      _$NewssearchformEventCopyWithImpl<$Res>;
  $Res call({String search});
}

/// @nodoc
class _$NewssearchformEventCopyWithImpl<$Res>
    implements $NewssearchformEventCopyWith<$Res> {
  _$NewssearchformEventCopyWithImpl(this._value, this._then);

  final NewssearchformEvent _value;
  // ignore: unused_field
  final $Res Function(NewssearchformEvent) _then;

  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_value.copyWith(
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ChangeSearchCopyWith<$Res>
    implements $NewssearchformEventCopyWith<$Res> {
  factory _$ChangeSearchCopyWith(
          _ChangeSearch value, $Res Function(_ChangeSearch) then) =
      __$ChangeSearchCopyWithImpl<$Res>;
  @override
  $Res call({String search});
}

/// @nodoc
class __$ChangeSearchCopyWithImpl<$Res>
    extends _$NewssearchformEventCopyWithImpl<$Res>
    implements _$ChangeSearchCopyWith<$Res> {
  __$ChangeSearchCopyWithImpl(
      _ChangeSearch _value, $Res Function(_ChangeSearch) _then)
      : super(_value, (v) => _then(v as _ChangeSearch));

  @override
  _ChangeSearch get _value => super._value as _ChangeSearch;

  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_ChangeSearch(
      search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeSearch implements _ChangeSearch {
  const _$_ChangeSearch(this.search);

  @override
  final String search;

  @override
  String toString() {
    return 'NewssearchformEvent.changeSearch(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeSearch &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(search);

  @JsonKey(ignore: true)
  @override
  _$ChangeSearchCopyWith<_ChangeSearch> get copyWith =>
      __$ChangeSearchCopyWithImpl<_ChangeSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) changeSearch,
  }) {
    return changeSearch(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String search)? changeSearch,
  }) {
    return changeSearch?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? changeSearch,
    required TResult orElse(),
  }) {
    if (changeSearch != null) {
      return changeSearch(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSearch value) changeSearch,
  }) {
    return changeSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeSearch value)? changeSearch,
  }) {
    return changeSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSearch value)? changeSearch,
    required TResult orElse(),
  }) {
    if (changeSearch != null) {
      return changeSearch(this);
    }
    return orElse();
  }
}

abstract class _ChangeSearch implements NewssearchformEvent {
  const factory _ChangeSearch(String search) = _$_ChangeSearch;

  @override
  String get search => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChangeSearchCopyWith<_ChangeSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NewssearchformStateTearOff {
  const _$NewssearchformStateTearOff();

  _NewssearchformState call({required String search}) {
    return _NewssearchformState(
      search: search,
    );
  }
}

/// @nodoc
const $NewssearchformState = _$NewssearchformStateTearOff();

/// @nodoc
mixin _$NewssearchformState {
  String get search => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewssearchformStateCopyWith<NewssearchformState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewssearchformStateCopyWith<$Res> {
  factory $NewssearchformStateCopyWith(
          NewssearchformState value, $Res Function(NewssearchformState) then) =
      _$NewssearchformStateCopyWithImpl<$Res>;
  $Res call({String search});
}

/// @nodoc
class _$NewssearchformStateCopyWithImpl<$Res>
    implements $NewssearchformStateCopyWith<$Res> {
  _$NewssearchformStateCopyWithImpl(this._value, this._then);

  final NewssearchformState _value;
  // ignore: unused_field
  final $Res Function(NewssearchformState) _then;

  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_value.copyWith(
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NewssearchformStateCopyWith<$Res>
    implements $NewssearchformStateCopyWith<$Res> {
  factory _$NewssearchformStateCopyWith(_NewssearchformState value,
          $Res Function(_NewssearchformState) then) =
      __$NewssearchformStateCopyWithImpl<$Res>;
  @override
  $Res call({String search});
}

/// @nodoc
class __$NewssearchformStateCopyWithImpl<$Res>
    extends _$NewssearchformStateCopyWithImpl<$Res>
    implements _$NewssearchformStateCopyWith<$Res> {
  __$NewssearchformStateCopyWithImpl(
      _NewssearchformState _value, $Res Function(_NewssearchformState) _then)
      : super(_value, (v) => _then(v as _NewssearchformState));

  @override
  _NewssearchformState get _value => super._value as _NewssearchformState;

  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_NewssearchformState(
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewssearchformState implements _NewssearchformState {
  const _$_NewssearchformState({required this.search});

  @override
  final String search;

  @override
  String toString() {
    return 'NewssearchformState(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewssearchformState &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(search);

  @JsonKey(ignore: true)
  @override
  _$NewssearchformStateCopyWith<_NewssearchformState> get copyWith =>
      __$NewssearchformStateCopyWithImpl<_NewssearchformState>(
          this, _$identity);
}

abstract class _NewssearchformState implements NewssearchformState {
  const factory _NewssearchformState({required String search}) =
      _$_NewssearchformState;

  @override
  String get search => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewssearchformStateCopyWith<_NewssearchformState> get copyWith =>
      throw _privateConstructorUsedError;
}
