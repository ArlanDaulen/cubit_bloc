import 'package:cubit_bloc/features/home/data/models/belongs_to_collection_model.dart';
import 'package:cubit_bloc/features/home/data/models/genres_model.dart';
import 'package:cubit_bloc/features/home/data/models/production_companies_model.dart';
import 'package:cubit_bloc/features/home/data/models/production_countries_model.dart';
import 'package:cubit_bloc/features/home/data/models/spoken_languages_model.dart';
import 'package:cubit_bloc/features/home/domain/entities/belongs_to_collection.dart';
import 'package:cubit_bloc/features/home/domain/entities/genres.dart';
import 'package:cubit_bloc/features/home/domain/entities/production_companies.dart';
import 'package:cubit_bloc/features/home/domain/entities/production_countries.dart';
import 'package:cubit_bloc/features/home/domain/entities/spoken_languages.dart';
import 'package:equatable/equatable.dart';

class MovieDetails extends Equatable {
  bool? adult;
  String? backdropPath;
  BelongsToCollectionModel? belongsToCollection;
  int? budget;
  List<GenresModel>? genres;
  String? homepage;
  int? id;
  String? imdbId;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  List<ProductionCompaniesModel>? productionCompanies;
  List<ProductionCountriesModel>? productionCountries;
  String? releaseDate;
  int? revenue;
  int? runtime;
  List<SpokenLanguagesModel>? spokenLanguages;
  String? status;
  String? tagline;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  MovieDetails({
     this.adult,
     this.backdropPath,
     this.belongsToCollection,
     this.budget,
     this.genres,
     this.homepage,
     this.id,
     this.imdbId,
     this.originalLanguage,
     this.originalTitle,
     this.overview,
     this.popularity,
     this.posterPath,
     this.productionCompanies,
     this.productionCountries,
     this.releaseDate,
     this.revenue,
     this.runtime,
     this.spokenLanguages,
     this.status,
     this.tagline,
     this.title,
     this.video,
     this.voteAverage,
     this.voteCount,
  });

  @override
  List<Object?> get props => [
        adult,
        backdropPath,
        belongsToCollection,
        budget,
        genres,
        homepage,
        id,
        imdbId,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        productionCompanies,
        productionCountries,
        releaseDate,
        revenue,
        runtime,
        spokenLanguages,
        status,
        tagline,
        title,
        video,
        voteAverage,
        voteCount,
      ];
}
