import 'dart:convert';

import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String? posterPath;
  final bool? adult;
  final String? overview;
  final String? releaseDate;
  final List<int>? genreIds;
  final int? id;
  final String? originalTitle;
  final String? originalLanguage;
  final String? title;
  final String? backdropPath;
  final double? popularity;
  final int? voteCount;
  final bool? video;
  final double? voteAverage;

  const Movie({
    this.posterPath,
    this.adult,
    this.overview,
    this.releaseDate,
    this.genreIds,
    this.id,
    this.originalTitle,
    this.originalLanguage,
    this.title,
    this.backdropPath,
    this.popularity,
    this.voteCount,
    this.video,
    this.voteAverage,
  });

  factory Movie.fromMap(Map<String, dynamic> data) => Movie(
        posterPath: data['poster_path'] as String?,
        adult: data['adult'] as bool?,
        overview: data['overview'] as String?,
        releaseDate: data['release_date'] as String?,
        genreIds: data['genre_ids'] as List<int>?,
        id: data['id'] as int?,
        originalTitle: data['original_title'] as String?,
        originalLanguage: data['original_language'] as String?,
        title: data['title'] as String?,
        backdropPath: data['backdrop_path'] as String?,
        popularity: (data['popularity'] as num?)?.toDouble(),
        voteCount: data['vote_count'] as int?,
        video: data['video'] as bool?,
        voteAverage: (data['vote_average'] as num?)?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        'poster_path': posterPath,
        'adult': adult,
        'overview': overview,
        'release_date': releaseDate,
        'genre_ids': genreIds,
        'id': id,
        'original_title': originalTitle,
        'original_language': originalLanguage,
        'title': title,
        'backdrop_path': backdropPath,
        'popularity': popularity,
        'vote_count': voteCount,
        'video': video,
        'vote_average': voteAverage,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Movie].
  factory Movie.fromJson(String data) {
    return Movie.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Movie] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
      posterPath,
      adult,
      overview,
      releaseDate,
      genreIds,
      id,
      originalTitle,
      originalLanguage,
      title,
      backdropPath,
      popularity,
      voteCount,
      video,
      voteAverage,
    ];
  }
}
