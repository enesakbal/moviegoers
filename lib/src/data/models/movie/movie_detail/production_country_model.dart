import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/movie/movie_detail/production_country.dart';

part 'production_country_model.g.dart';

@JsonSerializable()
class ProductionCountryModel extends Equatable {
  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  final String? name;

  const ProductionCountryModel({this.iso31661, this.name});

  factory ProductionCountryModel.fromJson(Map<String, dynamic> json) {
    return _$ProductionCountryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductionCountryModelToJson(this);

  ProductionCountry toEntity() => ProductionCountry(iso31661: iso31661, name: name);

  @override
  List<Object?> get props => [iso31661, name];
}
