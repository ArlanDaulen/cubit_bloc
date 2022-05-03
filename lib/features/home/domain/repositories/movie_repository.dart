import 'package:cubit_bloc/core/error/failures.dart';
import 'package:cubit_bloc/features/home/domain/entities/movie.dart';
import 'package:cubit_bloc/features/home/domain/entities/movie_details.dart';
import 'package:dartz/dartz.dart';

abstract class MovieRespository {
  Future<Either<Failure, Movie>>? getTopRatedMovies(int page);
  Future<Either<Failure, MovieDetails>>? getMovieDetails(int movieId);
}
