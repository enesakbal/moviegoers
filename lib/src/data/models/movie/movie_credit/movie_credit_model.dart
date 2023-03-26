import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/movie/movie_credit/movie_credit.dart';
import 'cast_model.dart';

part 'movie_credit_model.g.dart';

@JsonSerializable()
class MovieCreditModel extends Equatable {
  final int? id;
  final List<CastModel>? cast;

  const MovieCreditModel({this.id, this.cast});

  factory MovieCreditModel.fromJson(Map<String, dynamic> json) {
    return _$MovieCreditModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovieCreditModelToJson(this);

  MovieCredit toEntity() => MovieCredit(
        id: id,
        cast: cast!.map((e) => e.toEntity()).toList(),
      );

  @override
  List<Object?> get props => [id, cast];
}
