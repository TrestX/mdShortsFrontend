// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryFormEventTearOff {
  const _$CategoryFormEventTearOff();

  _CategoryChanged categoryChanged(String categoryStr) {
    return _CategoryChanged(
      categoryStr,
    );
  }

  _AddCategories addCategories(List<String> myCategories) {
    return _AddCategories(
      myCategories,
    );
  }
}

/// @nodoc
const $CategoryFormEvent = _$CategoryFormEventTearOff();

/// @nodoc
mixin _$CategoryFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(List<String> myCategories) addCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(List<String> myCategories)? addCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(List<String> myCategories)? addCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_AddCategories value) addCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_AddCategories value)? addCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_AddCategories value)? addCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryFormEventCopyWith<$Res> {
  factory $CategoryFormEventCopyWith(
          CategoryFormEvent value, $Res Function(CategoryFormEvent) then) =
      _$CategoryFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryFormEventCopyWithImpl<$Res>
    implements $CategoryFormEventCopyWith<$Res> {
  _$CategoryFormEventCopyWithImpl(this._value, this._then);

  final CategoryFormEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryFormEvent) _then;
}

/// @nodoc
abstract class _$CategoryChangedCopyWith<$Res> {
  factory _$CategoryChangedCopyWith(
          _CategoryChanged value, $Res Function(_CategoryChanged) then) =
      __$CategoryChangedCopyWithImpl<$Res>;
  $Res call({String categoryStr});
}

/// @nodoc
class __$CategoryChangedCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res>
    implements _$CategoryChangedCopyWith<$Res> {
  __$CategoryChangedCopyWithImpl(
      _CategoryChanged _value, $Res Function(_CategoryChanged) _then)
      : super(_value, (v) => _then(v as _CategoryChanged));

  @override
  _CategoryChanged get _value => super._value as _CategoryChanged;

  @override
  $Res call({
    Object? categoryStr = freezed,
  }) {
    return _then(_CategoryChanged(
      categoryStr == freezed
          ? _value.categoryStr
          : categoryStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoryChanged implements _CategoryChanged {
  const _$_CategoryChanged(this.categoryStr);

  @override
  final String categoryStr;

  @override
  String toString() {
    return 'CategoryFormEvent.categoryChanged(categoryStr: $categoryStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryChanged &&
            (identical(other.categoryStr, categoryStr) ||
                const DeepCollectionEquality()
                    .equals(other.categoryStr, categoryStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categoryStr);

  @JsonKey(ignore: true)
  @override
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith =>
      __$CategoryChangedCopyWithImpl<_CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(List<String> myCategories) addCategories,
  }) {
    return categoryChanged(categoryStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(List<String> myCategories)? addCategories,
  }) {
    return categoryChanged?.call(categoryStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(List<String> myCategories)? addCategories,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(categoryStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_AddCategories value) addCategories,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_AddCategories value)? addCategories,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_AddCategories value)? addCategories,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryChanged implements CategoryFormEvent {
  const factory _CategoryChanged(String categoryStr) = _$_CategoryChanged;

  String get categoryStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddCategoriesCopyWith<$Res> {
  factory _$AddCategoriesCopyWith(
          _AddCategories value, $Res Function(_AddCategories) then) =
      __$AddCategoriesCopyWithImpl<$Res>;
  $Res call({List<String> myCategories});
}

/// @nodoc
class __$AddCategoriesCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res>
    implements _$AddCategoriesCopyWith<$Res> {
  __$AddCategoriesCopyWithImpl(
      _AddCategories _value, $Res Function(_AddCategories) _then)
      : super(_value, (v) => _then(v as _AddCategories));

  @override
  _AddCategories get _value => super._value as _AddCategories;

  @override
  $Res call({
    Object? myCategories = freezed,
  }) {
    return _then(_AddCategories(
      myCategories == freezed
          ? _value.myCategories
          : myCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_AddCategories implements _AddCategories {
  const _$_AddCategories(this.myCategories);

  @override
  final List<String> myCategories;

  @override
  String toString() {
    return 'CategoryFormEvent.addCategories(myCategories: $myCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCategories &&
            (identical(other.myCategories, myCategories) ||
                const DeepCollectionEquality()
                    .equals(other.myCategories, myCategories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(myCategories);

  @JsonKey(ignore: true)
  @override
  _$AddCategoriesCopyWith<_AddCategories> get copyWith =>
      __$AddCategoriesCopyWithImpl<_AddCategories>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(List<String> myCategories) addCategories,
  }) {
    return addCategories(myCategories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(List<String> myCategories)? addCategories,
  }) {
    return addCategories?.call(myCategories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(List<String> myCategories)? addCategories,
    required TResult orElse(),
  }) {
    if (addCategories != null) {
      return addCategories(myCategories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_AddCategories value) addCategories,
  }) {
    return addCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_AddCategories value)? addCategories,
  }) {
    return addCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_AddCategories value)? addCategories,
    required TResult orElse(),
  }) {
    if (addCategories != null) {
      return addCategories(this);
    }
    return orElse();
  }
}

abstract class _AddCategories implements CategoryFormEvent {
  const factory _AddCategories(List<String> myCategories) = _$_AddCategories;

  List<String> get myCategories => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddCategoriesCopyWith<_AddCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CategoryFormStateTearOff {
  const _$CategoryFormStateTearOff();

  _CategoryFormState call({required List<String> id, required bool isEditing}) {
    return _CategoryFormState(
      id: id,
      isEditing: isEditing,
    );
  }
}

/// @nodoc
const $CategoryFormState = _$CategoryFormStateTearOff();

/// @nodoc
mixin _$CategoryFormState {
  List<String> get id => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryFormStateCopyWith<CategoryFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryFormStateCopyWith<$Res> {
  factory $CategoryFormStateCopyWith(
          CategoryFormState value, $Res Function(CategoryFormState) then) =
      _$CategoryFormStateCopyWithImpl<$Res>;
  $Res call({List<String> id, bool isEditing});
}

/// @nodoc
class _$CategoryFormStateCopyWithImpl<$Res>
    implements $CategoryFormStateCopyWith<$Res> {
  _$CategoryFormStateCopyWithImpl(this._value, this._then);

  final CategoryFormState _value;
  // ignore: unused_field
  final $Res Function(CategoryFormState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isEditing = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CategoryFormStateCopyWith<$Res>
    implements $CategoryFormStateCopyWith<$Res> {
  factory _$CategoryFormStateCopyWith(
          _CategoryFormState value, $Res Function(_CategoryFormState) then) =
      __$CategoryFormStateCopyWithImpl<$Res>;
  @override
  $Res call({List<String> id, bool isEditing});
}

/// @nodoc
class __$CategoryFormStateCopyWithImpl<$Res>
    extends _$CategoryFormStateCopyWithImpl<$Res>
    implements _$CategoryFormStateCopyWith<$Res> {
  __$CategoryFormStateCopyWithImpl(
      _CategoryFormState _value, $Res Function(_CategoryFormState) _then)
      : super(_value, (v) => _then(v as _CategoryFormState));

  @override
  _CategoryFormState get _value => super._value as _CategoryFormState;

  @override
  $Res call({
    Object? id = freezed,
    Object? isEditing = freezed,
  }) {
    return _then(_CategoryFormState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CategoryFormState implements _CategoryFormState {
  const _$_CategoryFormState({required this.id, required this.isEditing});

  @override
  final List<String> id;
  @override
  final bool isEditing;

  @override
  String toString() {
    return 'CategoryFormState(id: $id, isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryFormState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isEditing);

  @JsonKey(ignore: true)
  @override
  _$CategoryFormStateCopyWith<_CategoryFormState> get copyWith =>
      __$CategoryFormStateCopyWithImpl<_CategoryFormState>(this, _$identity);
}

abstract class _CategoryFormState implements CategoryFormState {
  const factory _CategoryFormState(
      {required List<String> id,
      required bool isEditing}) = _$_CategoryFormState;

  @override
  List<String> get id => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryFormStateCopyWith<_CategoryFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
