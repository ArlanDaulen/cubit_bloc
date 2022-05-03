import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:cubit_bloc/features/home/domain/entities/movie_details.dart';

import '../../domain/usecases/get_movie_details.dart';

part 'movie_details_state.dart';
part 'movie_details_cubit.freezed.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  final GetMovieDetails getMovieDetails;

  MovieDetailsCubit({required this.getMovieDetails})
      : super(MovieDetailsState.initial());

  void loadMovieDetails(int movieId) async {
    emit(const MovieDetailsState.loading());
    final failureOrDetails = await getMovieDetails(Params(movieId: movieId));
    failureOrDetails!.fold(
      (failure) {
        emit(MovieDetailsState.error(message: failure.message));
      },
      (movieDetails) {
        emit(MovieDetailsState.movieDetailsLoaded(movieDetails));
      },
    );
  }
}
