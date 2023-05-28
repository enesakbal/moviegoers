import 'package:equatable/equatable.dart';

import '../../cast/movie_cast/movie_cast.dart';

class MovieCredit extends Equatable {
  final int? id;
  final List<MovieCast>? movieCast;

  const MovieCredit({this.id, this.movieCast});

  @override
  List<Object?> get props => [id, movieCast];
}
