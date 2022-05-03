import 'package:cubit_bloc/core/error/failures.dart';
import 'package:cubit_bloc/core/usercases/usecase.dart';
import 'package:cubit_bloc/features/home/domain/entities/movie.dart';
import 'package:cubit_bloc/features/home/domain/repositories/movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class GetTopRatedMovies implements UseCase<Movie, RatedParams> {
  final MovieRespository respository;

  GetTopRatedMovies(this.respository);

  @override
  Future<Either<Failure, Movie>?> call(params) async {
    return await respository.getTopRatedMovies(params.page);
  }
}

class RatedParams extends Equatable {
  int page;
  RatedParams(this.page);

  @override
  List<Object?> get props => [page];

  
}
