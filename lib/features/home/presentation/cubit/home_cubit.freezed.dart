// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(Movie movie) topRatedMoviesLoaded,
    required TResult Function(MovieDetails movieDetails) movieDetailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie)? topRatedMoviesLoaded,
    TResult Function(MovieDetails movieDetails)? movieDetailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie)? topRatedMoviesLoaded,
    TResult Function(MovieDetails movieDetails)? movieDetailsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_TopRatedMoviesLoaded value) topRatedMoviesLoaded,
    required TResult Function(_MovieDetailsLoaded value) movieDetailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TopRatedMoviesLoaded value)? topRatedMoviesLoaded,
    TResult Function(_MovieDetailsLoaded value)? movieDetailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TopRatedMoviesLoaded value)? topRatedMoviesLoaded,
    TResult Function(_MovieDetailsLoaded value)? movieDetailsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(Movie movie) topRatedMoviesLoaded,
    required TResult Function(MovieDetails movieDetails) movieDetailsLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie)? topRatedMoviesLoaded,
    TResult Function(MovieDetails movieDetails)? movieDetailsLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie)? topRatedMoviesLoaded,
    TResult Function(MovieDetails movieDetails)? movieDetailsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_TopRatedMoviesLoaded value) topRatedMoviesLoaded,
    required TResult Function(_MovieDetailsLoaded value) movieDetailsLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TopRatedMoviesLoaded value)? topRatedMoviesLoaded,
    TResult Function(_MovieDetailsLoaded value)? movieDetailsLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TopRatedMoviesLoaded value)? topRatedMoviesLoaded,
    TResult Function(_MovieDetailsLoaded value)? movieDetailsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(Movie movie) topRatedMoviesLoaded,
    required TResult Function(MovieDetails movieDetails) movieDetailsLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie)? topRatedMoviesLoaded,
    TResult Function(MovieDetails movieDetails)? movieDetailsLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie)? topRatedMoviesLoaded,
    TResult Function(MovieDetails movieDetails)? movieDetailsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_TopRatedMoviesLoaded value) topRatedMoviesLoaded,
    required TResult Function(_MovieDetailsLoaded value) movieDetailsLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TopRatedMoviesLoaded value)? topRatedMoviesLoaded,
    TResult Function(_MovieDetailsLoaded value)? movieDetailsLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TopRatedMoviesLoaded value)? topRatedMoviesLoaded,
    TResult Function(_MovieDetailsLoaded value)? movieDetailsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Error(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(Movie movie) topRatedMoviesLoaded,
    required TResult Function(MovieDetails movieDetails) movieDetailsLoaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie)? topRatedMoviesLoaded,
    TResult Function(MovieDetails movieDetails)? movieDetailsLoaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie)? topRatedMoviesLoaded,
    TResult Function(MovieDetails movieDetails)? movieDetailsLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_TopRatedMoviesLoaded value) topRatedMoviesLoaded,
    required TResult Function(_MovieDetailsLoaded value) movieDetailsLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TopRatedMoviesLoaded value)? topRatedMoviesLoaded,
    TResult Function(_MovieDetailsLoaded value)? movieDetailsLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TopRatedMoviesLoaded value)? topRatedMoviesLoaded,
    TResult Function(_MovieDetailsLoaded value)? movieDetailsLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeState {
  const factory _Error({required final String message}) = _$_Error;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TopRatedMoviesLoadedCopyWith<$Res> {
  factory _$TopRatedMoviesLoadedCopyWith(_TopRatedMoviesLoaded value,
          $Res Function(_TopRatedMoviesLoaded) then) =
      __$TopRatedMoviesLoadedCopyWithImpl<$Res>;
  $Res call({Movie movie});
}

/// @nodoc
class __$TopRatedMoviesLoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$TopRatedMoviesLoadedCopyWith<$Res> {
  __$TopRatedMoviesLoadedCopyWithImpl(
      _TopRatedMoviesLoaded _value, $Res Function(_TopRatedMoviesLoaded) _then)
      : super(_value, (v) => _then(v as _TopRatedMoviesLoaded));

  @override
  _TopRatedMoviesLoaded get _value => super._value as _TopRatedMoviesLoaded;

  @override
  $Res call({
    Object? movie = freezed,
  }) {
    return _then(_TopRatedMoviesLoaded(
      movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }
}

/// @nodoc

class _$_TopRatedMoviesLoaded implements _TopRatedMoviesLoaded {
  const _$_TopRatedMoviesLoaded(this.movie);

  @override
  final Movie movie;

  @override
  String toString() {
    return 'HomeState.topRatedMoviesLoaded(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TopRatedMoviesLoaded &&
            const DeepCollectionEquality().equals(other.movie, movie));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movie));

  @JsonKey(ignore: true)
  @override
  _$TopRatedMoviesLoadedCopyWith<_TopRatedMoviesLoaded> get copyWith =>
      __$TopRatedMoviesLoadedCopyWithImpl<_TopRatedMoviesLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(Movie movie) topRatedMoviesLoaded,
    required TResult Function(MovieDetails movieDetails) movieDetailsLoaded,
  }) {
    return topRatedMoviesLoaded(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie)? topRatedMoviesLoaded,
    TResult Function(MovieDetails movieDetails)? movieDetailsLoaded,
  }) {
    return topRatedMoviesLoaded?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie)? topRatedMoviesLoaded,
    TResult Function(MovieDetails movieDetails)? movieDetailsLoaded,
    required TResult orElse(),
  }) {
    if (topRatedMoviesLoaded != null) {
      return topRatedMoviesLoaded(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_TopRatedMoviesLoaded value) topRatedMoviesLoaded,
    required TResult Function(_MovieDetailsLoaded value) movieDetailsLoaded,
  }) {
    return topRatedMoviesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TopRatedMoviesLoaded value)? topRatedMoviesLoaded,
    TResult Function(_MovieDetailsLoaded value)? movieDetailsLoaded,
  }) {
    return topRatedMoviesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TopRatedMoviesLoaded value)? topRatedMoviesLoaded,
    TResult Function(_MovieDetailsLoaded value)? movieDetailsLoaded,
    required TResult orElse(),
  }) {
    if (topRatedMoviesLoaded != null) {
      return topRatedMoviesLoaded(this);
    }
    return orElse();
  }
}

abstract class _TopRatedMoviesLoaded implements HomeState {
  const factory _TopRatedMoviesLoaded(final Movie movie) =
      _$_TopRatedMoviesLoaded;

  Movie get movie => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TopRatedMoviesLoadedCopyWith<_TopRatedMoviesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MovieDetailsLoadedCopyWith<$Res> {
  factory _$MovieDetailsLoadedCopyWith(
          _MovieDetailsLoaded value, $Res Function(_MovieDetailsLoaded) then) =
      __$MovieDetailsLoadedCopyWithImpl<$Res>;
  $Res call({MovieDetails movieDetails});
}

/// @nodoc
class __$MovieDetailsLoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$MovieDetailsLoadedCopyWith<$Res> {
  __$MovieDetailsLoadedCopyWithImpl(
      _MovieDetailsLoaded _value, $Res Function(_MovieDetailsLoaded) _then)
      : super(_value, (v) => _then(v as _MovieDetailsLoaded));

  @override
  _MovieDetailsLoaded get _value => super._value as _MovieDetailsLoaded;

  @override
  $Res call({
    Object? movieDetails = freezed,
  }) {
    return _then(_MovieDetailsLoaded(
      movieDetails == freezed
          ? _value.movieDetails
          : movieDetails // ignore: cast_nullable_to_non_nullable
              as MovieDetails,
    ));
  }
}

/// @nodoc

class _$_MovieDetailsLoaded implements _MovieDetailsLoaded {
  const _$_MovieDetailsLoaded(this.movieDetails);

  @override
  final MovieDetails movieDetails;

  @override
  String toString() {
    return 'HomeState.movieDetailsLoaded(movieDetails: $movieDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDetailsLoaded &&
            const DeepCollectionEquality()
                .equals(other.movieDetails, movieDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(movieDetails));

  @JsonKey(ignore: true)
  @override
  _$MovieDetailsLoadedCopyWith<_MovieDetailsLoaded> get copyWith =>
      __$MovieDetailsLoadedCopyWithImpl<_MovieDetailsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(Movie movie) topRatedMoviesLoaded,
    required TResult Function(MovieDetails movieDetails) movieDetailsLoaded,
  }) {
    return movieDetailsLoaded(movieDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie)? topRatedMoviesLoaded,
    TResult Function(MovieDetails movieDetails)? movieDetailsLoaded,
  }) {
    return movieDetailsLoaded?.call(movieDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(Movie movie)? topRatedMoviesLoaded,
    TResult Function(MovieDetails movieDetails)? movieDetailsLoaded,
    required TResult orElse(),
  }) {
    if (movieDetailsLoaded != null) {
      return movieDetailsLoaded(movieDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_TopRatedMoviesLoaded value) topRatedMoviesLoaded,
    required TResult Function(_MovieDetailsLoaded value) movieDetailsLoaded,
  }) {
    return movieDetailsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TopRatedMoviesLoaded value)? topRatedMoviesLoaded,
    TResult Function(_MovieDetailsLoaded value)? movieDetailsLoaded,
  }) {
    return movieDetailsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_TopRatedMoviesLoaded value)? topRatedMoviesLoaded,
    TResult Function(_MovieDetailsLoaded value)? movieDetailsLoaded,
    required TResult orElse(),
  }) {
    if (movieDetailsLoaded != null) {
      return movieDetailsLoaded(this);
    }
    return orElse();
  }
}

abstract class _MovieDetailsLoaded implements HomeState {
  const factory _MovieDetailsLoaded(final MovieDetails movieDetails) =
      _$_MovieDetailsLoaded;

  MovieDetails get movieDetails => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MovieDetailsLoadedCopyWith<_MovieDetailsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
