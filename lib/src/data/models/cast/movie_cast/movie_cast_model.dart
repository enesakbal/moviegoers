import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/cast/movie_cast/movie_cast.dart';
import '../../cast/cast/cast_model.dart';

part 'movie_cast_model.g.dart';

@JsonSerializable()
class MovieCastModel extends CastModel {
  @JsonKey(name: 'cast_id')
  final int? castId;
  final String? character;
  @JsonKey(name: 'credit_id')
  final String? creditId;
  final int? order;

  const MovieCastModel({
    super.adult,
    super.gender,
    super.id,
    super.knownForDepartment,
    super.name,
    super.originalName,
    super.popularity,
    super.profilePath,
    this.castId,
    this.character,
    this.creditId,
    this.order,
  });

  factory MovieCastModel.fromJson(Map<String, dynamic> json) => _$MovieCastModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieCastModelToJson(this);

  MovieCast toEntity() => MovieCast(
        adult: adult,
        id: id,
        knownForDepartment: knownForDepartment,
        name: name,
        originalName: originalName,
        popularity: popularity,
        profilePath: profilePath,
        castId: castId,
        character: character,
        creditId: creditId,
        order: order,
      );

  @override
  List<Object?> get props {
    return [
      adult,
      gender,
      id,
      knownForDepartment,
      name,
      popularity,
      profilePath,
      castId,
      character,
      creditId,
      order,
    ];
  }
}
