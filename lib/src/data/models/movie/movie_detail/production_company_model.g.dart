// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductionCompanyModel _$ProductionCompanyModelFromJson(
        Map<String, dynamic> json) =>
    ProductionCompanyModel(
      id: json['id'] as int?,
      logoPath: json['logo_path'] as String?,
      name: json['name'] as String?,
      originCountry: json['origin_country'] as String?,
    );

Map<String, dynamic> _$ProductionCompanyModelToJson(
        ProductionCompanyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'origin_country': instance.originCountry,
    };
