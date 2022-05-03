import 'package:cubit_bloc/core/error/failures.dart';
import 'package:cubit_bloc/core/usercases/usecase.dart';
import 'package:cubit_bloc/features/home/domain/entities/movie_details.dart';
import 'package:cubit_bloc/features/home/domain/repositories/movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class GetMovieDetails implements UseCase<MovieDetails, Params> {
  final MovieRespository respository;
  GetMovieDetails(this.respository);

  @override
  Future<Either<Failure, MovieDetails>?> call(Params params) async {
    return await respository.getMovieDetails(params.movieId);
  }
}

class Params extends Equatable {
  final int movieId;
  const Params({required this.movieId});

  @override
  List<Object?> get props => [movieId];
}
