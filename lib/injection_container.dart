import 'package:cubit_bloc/core/network/network_info.dart';
import 'package:cubit_bloc/features/home/data/datasources/home_remote_datasource.dart';
import 'package:cubit_bloc/features/home/data/repositories/movie_repository_impl.dart';
import 'package:cubit_bloc/features/home/domain/repositories/movie_repository.dart';
import 'package:cubit_bloc/features/home/domain/usecases/get_movie_details.dart';
import 'package:cubit_bloc/features/home/domain/usecases/get_top_rated_movies.dart';
import 'package:cubit_bloc/features/home/presentation/cubit/home_cubit.dart';
import 'package:cubit_bloc/features/home/presentation/cubit/movie_details_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

var homeCubit = sl<HomeCubit>();
var movieDetailsCubit = sl<MovieDetailsCubit>();

Future<void> init() async {
//! Features - Top Rated Movies
  sl.registerFactory(() => HomeCubit(getTopRatedMovies: sl()));
  sl.registerFactory(() => MovieDetailsCubit(getMovieDetails: sl()));

// Use cases
  sl.registerLazySingleton(() => GetTopRatedMovies(sl()));
  sl.registerLazySingleton(() => GetMovieDetails(sl()));

// Repository
  sl.registerLazySingleton<MovieRespository>(
      () => MovieRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()));

// Data sources
  sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(client: sl()));

//! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

//! External
  final prefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => prefs);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
