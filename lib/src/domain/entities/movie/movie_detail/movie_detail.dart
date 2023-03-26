import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'genre.dart';
import 'production_company.dart';
import 'production_country.dart';
import 'spoken_language.dart';

class MovieDetail extends Equatable {
  final bool? adult;
  final String? backdropPath;
  final dynamic belongsToCollection;
  final int? budget;
  final List<Genre>? genres;
  final String? homepage;
  final int? id;
  final String? imdbId;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final dynamic posterPath;
  final List<ProductionCompany>? productionCompanies;
  final List<ProductionCountry>? productionCountries;
  final String? releaseDate;
  final int? revenue;
  final int? runtime;
  final List<SpokenLanguage>? spokenLanguages;
  final String? status;
  final String? tagline;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  const MovieDetail({
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

  factory MovieDetail.fromMap(Map<String, dynamic> data) => MovieDetail(
        adult: data['adult'] as bool?,
        backdropPath: data['backdrop_path'] as String?,
        belongsToCollection: data['belongs_to_collection'] as dynamic,
        budget: data['budget'] as int?,
        genres: (data['genres'] as List<dynamic>?)
            ?.map((e) => Genre.fromMap(e as Map<String, dynamic>))
            .toList(),
        homepage: data['homepage'] as String?,
        id: data['id'] as int?,
        imdbId: data['imdb_id'] as String?,
        originalLanguage: data['original_language'] as String?,
        originalTitle: data['original_title'] as String?,
        overview: data['overview'] as String?,
        popularity: (data['popularity'] as num?)?.toDouble(),
        posterPath: data['poster_path'] as dynamic,
        productionCompanies: (data['production_companies'] as List<dynamic>?)
            ?.map((e) => ProductionCompany.fromMap(e as Map<String, dynamic>))
            .toList(),
        productionCountries: (data['production_countries'] as List<dynamic>?)
            ?.map((e) => ProductionCountry.fromMap(e as Map<String, dynamic>))
            .toList(),
        releaseDate: data['release_date'] as String?,
        revenue: data['revenue'] as int?,
        runtime: data['runtime'] as int?,
        spokenLanguages: (data['spoken_languages'] as List<dynamic>?)
            ?.map((e) => SpokenLanguage.fromMap(e as Map<String, dynamic>))
            .toList(),
        status: data['status'] as String?,
        tagline: data['tagline'] as String?,
        title: data['title'] as String?,
        video: data['video'] as bool?,
        voteAverage: (data['vote_average'] as num?)?.toDouble(),
        voteCount: data['vote_count'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'adult': adult,
        'backdrop_path': backdropPath,
        'belongs_to_collection': belongsToCollection,
        'budget': budget,
        'genres': genres?.map((e) => e.toMap()).toList(),
        'homepage': homepage,
        'id': id,
        'imdb_id': imdbId,
        'original_language': originalLanguage,
        'original_title': originalTitle,
        'overview': overview,
        'popularity': popularity,
        'poster_path': posterPath,
        'production_companies':
            productionCompanies?.map((e) => e.toMap()).toList(),
        'production_countries':
            productionCountries?.map((e) => e.toMap()).toList(),
        'release_date': releaseDate,
        'revenue': revenue,
        'runtime': runtime,
        'spoken_languages': spokenLanguages?.map((e) => e.toMap()).toList(),
        'status': status,
        'tagline': tagline,
        'title': title,
        'video': video,
        'vote_average': voteAverage,
        'vote_count': voteCount,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MovieDetail].
  factory MovieDetail.fromJson(String data) {
    return MovieDetail.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MovieDetail] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
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
}
