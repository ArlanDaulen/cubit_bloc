import 'package:cubit_bloc/features/home/domain/entities/results.dart';
import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  int? page;
  List<Results>? results;
  int? totalPages;
  int? totalResults;

  Movie({this.page, this.results, this.totalPages, this.totalResults});

  @override
  List<Object?> get props => [page, results, totalPages, totalResults];
}
