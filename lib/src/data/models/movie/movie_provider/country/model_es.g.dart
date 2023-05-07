// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_es.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelES _$ModelESFromJson(Map<String, dynamic> json) => ModelES(
      link: json['link'] as String?,
      rent: (json['rent'] as List<dynamic>?)
          ?.map((e) => ProviderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      flatrate: (json['flatrate'] as List<dynamic>?)
          ?.map((e) => ProviderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      buy: (json['buy'] as List<dynamic>?)
          ?.map((e) => ProviderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ModelESToJson(ModelES instance) => <String, dynamic>{
      'link': instance.link,
      'rent': instance.rent,
      'flatrate': instance.flatrate,
      'buy': instance.buy,
    };
