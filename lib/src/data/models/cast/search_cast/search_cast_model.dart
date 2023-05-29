import 'package:json_annotation/json_annotation.dart';

import '../../movie/movie/movie_model.dart';
import '../cast/cast_model.dart';

part 'search_cast_model.g.dart';

@JsonSerializable()
class SearchCastModel extends CastModel {
  @JsonKey(name: 'known_for')
  final List<MovieModel>? knownFor;

  const SearchCastModel({
    super.adult,
    super.gender,
    super.id,
    super.knownForDepartment,
    super.name,
    super.originalName,
    super.popularity,
    super.profilePath,
    this.knownFor,
  });

  factory SearchCastModel.fromJson(Map<String, dynamic> json) =>
      _$SearchCastModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchCastModelToJson(this);

  @override
  List<Object?> get props {
    return [
      adult,
      gender,
      id,
      knownForDepartment,
      name,
      originalName,
      popularity,
      profilePath,
      knownFor,
    ];
  }
}
