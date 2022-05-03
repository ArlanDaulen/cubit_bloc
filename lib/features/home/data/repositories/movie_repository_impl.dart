import 'dart:developer';

import 'package:cubit_bloc/core/error/exceptions.dart';
import 'package:cubit_bloc/core/network/network_info.dart';
import 'package:cubit_bloc/features/home/data/datasources/home_remote_datasource.dart';
import 'package:cubit_bloc/features/home/domain/entities/movie.dart';
import 'package:cubit_bloc/core/error/failures.dart';
import 'package:cubit_bloc/features/home/domain/entities/movie_details.dart';
import 'package:cubit_bloc/features/home/domain/repositories/movie_repository.dart';
import 'package:dartz/dartz.dart';

const String noInternet = 'No Internet Connection';

class MovieRepositoryImpl implements MovieRespository {
  final HomeRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  MovieRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Movie>>? getTopRatedMovies(int page) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteMovie = await remoteDataSource.getTopRatedMovies(page);
        log(remoteMovie!.results!.length.toString());
        return Right(remoteMovie);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      }
    } else {
      log('No Internet Connection');
      return Left(ServerFailure(noInternet));
    }
  }

  @override
  Future<Either<Failure, MovieDetails>>? getMovieDetails(int movieId) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteMovie = await remoteDataSource.getMovieDetails(movieId);
        return Right(remoteMovie!);
      } on ServerException catch (e) {
        return Left(
          ServerFailure(e.message),
        );
      }
    } else {
      return Left(
        ServerFailure(noInternet),
      );
    }
  }
}
