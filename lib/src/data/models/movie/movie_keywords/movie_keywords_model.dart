import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/movie/movie_keywords/movie_keywords.dart';
import 'keyword_model.dart';

part 'movie_keywords_model.g.dart';

@JsonSerializable()
class MovieKeywordsModel extends Equatable {
  final int? id;
  final List<KeywordModel>? keywords;

  const MovieKeywordsModel({this.id, this.keywords});

  factory MovieKeywordsModel.fromJson(Map<String, dynamic> json) {
    return _$MovieKeywordsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovieKeywordsModelToJson(this);

  @override
  List<Object?> get props => [id, keywords];

  MovieKeywords toEntity() => MovieKeywords(id: id, keywords: keywords?.map((e) => e.toEntity()).toList());
}
