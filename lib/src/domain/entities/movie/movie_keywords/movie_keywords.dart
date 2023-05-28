import 'package:equatable/equatable.dart';

import 'keyword.dart';

class MovieKeywords extends Equatable {
  final int? id;
  final List<Keyword>? keywords;

  const MovieKeywords({this.id, this.keywords});

  @override
  List<Object?> get props => [id, keywords];
}
