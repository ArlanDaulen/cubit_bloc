import 'dart:developer';

import 'package:cubit_bloc/features/home/presentation/cubit/movie_details_cubit.dart';
import 'package:cubit_bloc/features/home/presentation/pages/movie_details_page.dart';
import 'package:cubit_bloc/injection_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/home_cubit.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeCubit cubit = sl<HomeCubit>();
  ScrollController scrollController = ScrollController();
  int count = 1;
  bool isLoading = false;

  @override
  void initState() {
    // cubit.mockFetch(count);
    scrollController.addListener(() async {
      if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent &&
          !isLoading) {
        log('Loading');
        setState(() {
          isLoading = true;
          count++;
        });
        cubit.load(count);
        setState(() {
          isLoading = false;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // create: (context) => cubit,
      create: (context) {
        cubit.load(count);
        return cubit;
      },
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Top rated movies'),
              centerTitle: true,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => cubit.load(count),
              child: const Icon(Icons.download),
            ),
            body: state.maybeWhen(
              orElse: () {},
              initial: () => const Center(
                child: Text('Press button to load movies'),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (message) => Center(
                child: Text(
                  message,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
              topRatedMoviesLoaded: (movies) => ListView.separated(
                controller: scrollController,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                // itemCount: di.cubit.movie!.results!.length,
                itemCount: cubit.movies.length + (isLoading ? 1 : 0),
                separatorBuilder: (_, index) => const Divider(),
                itemBuilder: (_, index) {
                  if (index < cubit.movies.length) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider(
                            create: (_) {
                              final _cubit = sl<MovieDetailsCubit>();
                              _cubit.loadMovieDetails(cubit.movies[index].id!);
                              return _cubit;
                            },
                            child: MovieDetailsPage(
                              // movieId: di.homeCubit.movie!.results![index].id!,
                              movieId: cubit.movies[index].id!,
                            ),
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'http://image.tmdb.org/t/p/w500' +
                                cubit.movies[index].posterPath!,
                            width: MediaQuery.of(context).size.width * 0.3,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cubit.movies[index].title!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      CupertinoIcons.star_fill,
                                      color: Colors.amber,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      cubit.movies[index].voteAverage
                                          .toString(),
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                                Text(
                                  cubit.movies[index].overview!,
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
