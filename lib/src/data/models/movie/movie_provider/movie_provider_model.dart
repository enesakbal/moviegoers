import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'results_model.dart';

part 'movie_provider_model.g.dart';

@JsonSerializable()
class MovieProviderModel extends Equatable {
  final int? id;
  final ResultsModel? results;

  const MovieProviderModel({this.id, this.results});

  factory MovieProviderModel.fromJson(Map<String, dynamic> json) {
    return _$MovieProviderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovieProviderModelToJson(this);

  @override
  List<Object?> get props => [id, results];
}
