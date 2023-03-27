import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/movie/movie_detail/genre.dart';

part 'genre_model.g.dart';

@JsonSerializable()
class GenreModel extends Equatable {
  final int? id;
  final String? name;

  const GenreModel({this.id, this.name});

  factory GenreModel.fromJson(Map<String, dynamic> json) => _$GenreModelFromJson(json);

  Map<String, dynamic> toJson() => _$GenreModelToJson(this);

  Genre toEntity() => Genre(id: id, name: name);

  @override
  List<Object?> get props => [id, name];
}
