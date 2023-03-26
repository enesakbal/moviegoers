import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/movie/movie_detail/production_company.dart';

part 'production_company_model.g.dart';

@JsonSerializable()
class ProductionCompanyModel extends Equatable {
  final int? id;
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  final String? name;
  @JsonKey(name: 'origin_country')
  final String? originCountry;

  const ProductionCompanyModel({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  factory ProductionCompanyModel.fromJson(Map<String, dynamic> json) {
    return _$ProductionCompanyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductionCompanyModelToJson(this);

  ProductionCompany toEntity() => ProductionCompany(
        id: id,
        name: name,
        logoPath: logoPath,
        originCountry: originCountry,
      );

  @override
  List<Object?> get props => [id, logoPath, name, originCountry];
}
