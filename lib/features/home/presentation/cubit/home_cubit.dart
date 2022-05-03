import 'dart:developer';

import 'package:cubit_bloc/features/home/domain/entities/movie_details.dart';
import 'package:cubit_bloc/features/home/domain/entities/results.dart';
import 'package:cubit_bloc/features/home/domain/usecases/get_top_rated_movies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/movie.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetTopRatedMovies getTopRatedMovies;

  HomeCubit({required this.getTopRatedMovies}) : super(HomeState.initial());

  List<Results> movies = [];
  bool isLoading = false;
  bool allLoaded = false;

  ScrollController scrollController = ScrollController();

  // void mockFetch(int page) async {
  //   final newData = await getTopRatedMovies(RatedParams(page));
  //   newData!.fold(
  //     (l) => log('SUKAAAA'),
  //     (success) => movies.addAll(success.results!),
  //   );
  // }

  void load(int page) async {
    emit(const HomeState.loading());
    final failureOrMovie = await getTopRatedMovies(RatedParams(1));
    failureOrMovie!.fold((failure) {
      emit(
        HomeState.error(
          message: failure.message,
        ),
      );
    }, (_movie) async {
      // log("Cubit: ${_movie.results!.length}");
      // // movie = _movie;
      final newData = await getTopRatedMovies(RatedParams(page));
      newData!.fold(
        (l) => log('SUKAAAA'),
        (success) => movies.addAll(success.results!),
      );
      emit(HomeState.topRatedMoviesLoaded(_movie));
    });
  }

  // String _mapFailureToMessage(Failure failure) {
  //   switch (failure.runtimeType) {
  //     case ServerFailure:
  //       return
  //       break;
  //     default:
  //   }
  // }
}
