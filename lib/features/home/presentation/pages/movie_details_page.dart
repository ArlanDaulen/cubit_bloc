import 'package:cubit_bloc/features/home/presentation/cubit/movie_details_cubit.dart';
import 'package:cubit_bloc/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cubit_bloc/injection_container.dart' as di;

class MovieDetailsPage extends StatelessWidget {
  final int movieId;
  const MovieDetailsPage({Key? key, required this.movieId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // context.read<MovieDetailsCubit>().loadMovieDetails(movieId);
    return BlocConsumer<MovieDetailsCubit, MovieDetailsState>(
      listener: (_, state) {},
      builder: (_, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              state.maybeWhen(
                orElse: () => 'Initial',
                movieDetailsLoaded: (movieDetails) => movieDetails.title!,
                loading: () => 'loading...',
              ),
            ),
          ),
          body: state.maybeWhen(
            orElse: () {},
            error: (message) => Center(
              child: Text(
                message,
                style: const TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            movieDetailsLoaded: (movieDetails) => Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Image.network(
                  'http://image.tmdb.org/t/p/w500' + movieDetails.posterPath!,
                ),
                ...List.generate(
                  movieDetails.genres!.length,
                  (index) => Text(movieDetails.genres![index].name!),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
