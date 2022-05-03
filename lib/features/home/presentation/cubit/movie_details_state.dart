part of 'movie_details_cubit.dart';

@freezed
abstract class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.initial() = _Initial;
  const factory MovieDetailsState.loading() = _Loading;
  const factory MovieDetailsState.error({required String message}) = _Error;
  const factory MovieDetailsState.movieDetailsLoaded(
      MovieDetails movieDetails) = _MovieDetailsLoaded;
}
