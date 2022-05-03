import 'dart:convert';
import 'dart:developer';

import 'package:cubit_bloc/core/error/exceptions.dart';
import 'package:cubit_bloc/features/home/data/models/movie_details_model.dart';
import 'package:cubit_bloc/features/home/data/models/movie_model.dart';
import 'package:cubit_bloc/features/home/domain/entities/movie.dart';
import 'package:http/http.dart' as http;

abstract class HomeRemoteDataSource {
  Future<MovieModel>? getTopRatedMovies(int page);
  Future<MovieDetailsModel>? getMovieDetails(int movieId);
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final http.Client client;

  HomeRemoteDataSourceImpl({required this.client});

  @override
  Future<MovieModel>? getTopRatedMovies(int page) async {
    final response = await client.get(
      Uri.parse(
          'https://api.themoviedb.org/3/movie/top_rated?api_key=7b79568d4e94ac70052f8e960cc7aa12&language=en-US&page=$page'),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      log(response.statusCode.toString());
      return MovieModel.fromJson(
        json.decode(response.body),
      );
    } else {
      log(response.statusCode.toString());

      throw ServerException(
          message: json.decode(response.body)['status_message']);
    }
  }

  @override
  Future<MovieDetailsModel>? getMovieDetails(int movieId) async {
    final response = await client.get(
      Uri.parse(
        'https://api.themoviedb.org/3/movie/$movieId?api_key=7b79568d4e94ac70052f8e960cc7aa12&language=en-US',
      ),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      log(response.statusCode.toString());
      return MovieDetailsModel.fromJson(
        json.decode(response.body),
      );
    } else {
      log(response.statusCode.toString());
      throw ServerException(
          message: json.decode(response.body)['status_message']);
    }
  }
}

