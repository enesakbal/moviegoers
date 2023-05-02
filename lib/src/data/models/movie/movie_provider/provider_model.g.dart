// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProviderModel _$ProviderModelFromJson(Map<String, dynamic> json) => ProviderModel(
      displayPriority: json['display_priority'] as int?,
      logoPath: json['logo_path'] as String?,
      providerId: json['provider_id'] as int?,
      providerName: json['provider_name'] as String?,
    );

Map<String, dynamic> _$ProviderModelToJson(ProviderModel instance) => <String, dynamic>{
      'display_priority': instance.displayPriority,
      'logo_path': instance.logoPath,
      'provider_id': instance.providerId,
      'provider_name': instance.providerName,
    };
