import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/movie/movie_keywords/keyword.dart';

part 'keyword_model.g.dart';

@JsonSerializable()
class KeywordModel extends Equatable {
  final int? id;
  final String? name;

  const KeywordModel({this.id, this.name});

  factory KeywordModel.fromJson(Map<String, dynamic> json) {
    return _$KeywordModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$KeywordModelToJson(this);

  @override
  List<Object?> get props => [id, name];

  Keyword toEntity() => Keyword(id: id, name: name);
}
