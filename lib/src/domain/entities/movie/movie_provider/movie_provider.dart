import 'package:equatable/equatable.dart';

import 'results_entity.dart';

class MovieProvider extends Equatable {
  final int? id;
  final ResultsEntity? results;

  const MovieProvider({this.id, this.results});

  @override
  List<Object?> get props => [id, results];
}
