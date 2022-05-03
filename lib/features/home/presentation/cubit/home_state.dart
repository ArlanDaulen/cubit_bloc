part of 'home_cubit.dart';

// part 'home_state.freezed.dart';
@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.error({required String message}) = _Error;
  const factory HomeState.topRatedMoviesLoaded(Movie movie) =
      _TopRatedMoviesLoaded;
  const factory HomeState.movieDetailsLoaded(MovieDetails movieDetails) =
      _MovieDetailsLoaded;

}
