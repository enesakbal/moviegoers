import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/movie/movie_detail/spoken_language.dart';

part 'spoken_language_model.g.dart';

@JsonSerializable()
class SpokenLanguageModel extends Equatable {
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  final String? name;

  const SpokenLanguageModel({this.iso6391, this.name});
  factory SpokenLanguageModel.fromJson(Map<String, dynamic> json) {
    return _$SpokenLanguageModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpokenLanguageModelToJson(this);

  SpokenLanguage toEntity() => SpokenLanguage(name: name, iso6391: iso6391);

  @override
  List<Object?> get props => [iso6391, name];
}
