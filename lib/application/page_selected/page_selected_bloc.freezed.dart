// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_selected_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PageSelectedEventTearOff {
  const _$PageSelectedEventTearOff();

  _Initialized initialized() {
    return const _Initialized();
  }

  _ChangeLastIndex changeLastIndex(int index) {
    return _ChangeLastIndex(
      index,
    );
  }
}

/// @nodoc
const $PageSelectedEvent = _$PageSelectedEventTearOff();

/// @nodoc
mixin _$PageSelectedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(int index) changeLastIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int index)? changeLastIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int index)? changeLastIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ChangeLastIndex value) changeLastIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChangeLastIndex value)? changeLastIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChangeLastIndex value)? changeLastIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageSelectedEventCopyWith<$Res> {
  factory $PageSelectedEventCopyWith(
          PageSelectedEvent value, $Res Function(PageSelectedEvent) then) =
      _$PageSelectedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PageSelectedEventCopyWithImpl<$Res>
    implements $PageSelectedEventCopyWith<$Res> {
  _$PageSelectedEventCopyWithImpl(this._value, this._then);

  final PageSelectedEvent _value;
  // ignore: unused_field
  final $Res Function(PageSelectedEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$PageSelectedEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'PageSelectedEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(int index) changeLastIndex,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int index)? changeLastIndex,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int index)? changeLastIndex,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ChangeLastIndex value) changeLastIndex,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChangeLastIndex value)? changeLastIndex,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChangeLastIndex value)? changeLastIndex,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PageSelectedEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$ChangeLastIndexCopyWith<$Res> {
  factory _$ChangeLastIndexCopyWith(
          _ChangeLastIndex value, $Res Function(_ChangeLastIndex) then) =
      __$ChangeLastIndexCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$ChangeLastIndexCopyWithImpl<$Res>
    extends _$PageSelectedEventCopyWithImpl<$Res>
    implements _$ChangeLastIndexCopyWith<$Res> {
  __$ChangeLastIndexCopyWithImpl(
      _ChangeLastIndex _value, $Res Function(_ChangeLastIndex) _then)
      : super(_value, (v) => _then(v as _ChangeLastIndex));

  @override
  _ChangeLastIndex get _value => super._value as _ChangeLastIndex;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_ChangeLastIndex(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeLastIndex implements _ChangeLastIndex {
  const _$_ChangeLastIndex(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'PageSelectedEvent.changeLastIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeLastIndex &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$ChangeLastIndexCopyWith<_ChangeLastIndex> get copyWith =>
      __$ChangeLastIndexCopyWithImpl<_ChangeLastIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(int index) changeLastIndex,
  }) {
    return changeLastIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int index)? changeLastIndex,
  }) {
    return changeLastIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(int index)? changeLastIndex,
    required TResult orElse(),
  }) {
    if (changeLastIndex != null) {
      return changeLastIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ChangeLastIndex value) changeLastIndex,
  }) {
    return changeLastIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChangeLastIndex value)? changeLastIndex,
  }) {
    return changeLastIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ChangeLastIndex value)? changeLastIndex,
    required TResult orElse(),
  }) {
    if (changeLastIndex != null) {
      return changeLastIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeLastIndex implements PageSelectedEvent {
  const factory _ChangeLastIndex(int index) = _$_ChangeLastIndex;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeLastIndexCopyWith<_ChangeLastIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PageSelectedStateTearOff {
  const _$PageSelectedStateTearOff();

  _PageSelectedState call({required int lastIndex}) {
    return _PageSelectedState(
      lastIndex: lastIndex,
    );
  }
}

/// @nodoc
const $PageSelectedState = _$PageSelectedStateTearOff();

/// @nodoc
mixin _$PageSelectedState {
  int get lastIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageSelectedStateCopyWith<PageSelectedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageSelectedStateCopyWith<$Res> {
  factory $PageSelectedStateCopyWith(
          PageSelectedState value, $Res Function(PageSelectedState) then) =
      _$PageSelectedStateCopyWithImpl<$Res>;
  $Res call({int lastIndex});
}

/// @nodoc
class _$PageSelectedStateCopyWithImpl<$Res>
    implements $PageSelectedStateCopyWith<$Res> {
  _$PageSelectedStateCopyWithImpl(this._value, this._then);

  final PageSelectedState _value;
  // ignore: unused_field
  final $Res Function(PageSelectedState) _then;

  @override
  $Res call({
    Object? lastIndex = freezed,
  }) {
    return _then(_value.copyWith(
      lastIndex: lastIndex == freezed
          ? _value.lastIndex
          : lastIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PageSelectedStateCopyWith<$Res>
    implements $PageSelectedStateCopyWith<$Res> {
  factory _$PageSelectedStateCopyWith(
          _PageSelectedState value, $Res Function(_PageSelectedState) then) =
      __$PageSelectedStateCopyWithImpl<$Res>;
  @override
  $Res call({int lastIndex});
}

/// @nodoc
class __$PageSelectedStateCopyWithImpl<$Res>
    extends _$PageSelectedStateCopyWithImpl<$Res>
    implements _$PageSelectedStateCopyWith<$Res> {
  __$PageSelectedStateCopyWithImpl(
      _PageSelectedState _value, $Res Function(_PageSelectedState) _then)
      : super(_value, (v) => _then(v as _PageSelectedState));

  @override
  _PageSelectedState get _value => super._value as _PageSelectedState;

  @override
  $Res call({
    Object? lastIndex = freezed,
  }) {
    return _then(_PageSelectedState(
      lastIndex: lastIndex == freezed
          ? _value.lastIndex
          : lastIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PageSelectedState implements _PageSelectedState {
  const _$_PageSelectedState({required this.lastIndex});

  @override
  final int lastIndex;

  @override
  String toString() {
    return 'PageSelectedState(lastIndex: $lastIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageSelectedState &&
            (identical(other.lastIndex, lastIndex) ||
                const DeepCollectionEquality()
                    .equals(other.lastIndex, lastIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastIndex);

  @JsonKey(ignore: true)
  @override
  _$PageSelectedStateCopyWith<_PageSelectedState> get copyWith =>
      __$PageSelectedStateCopyWithImpl<_PageSelectedState>(this, _$identity);
}

abstract class _PageSelectedState implements PageSelectedState {
  const factory _PageSelectedState({required int lastIndex}) =
      _$_PageSelectedState;

  @override
  int get lastIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PageSelectedStateCopyWith<_PageSelectedState> get copyWith =>
      throw _privateConstructorUsedError;
}
