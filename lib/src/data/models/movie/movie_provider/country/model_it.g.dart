// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_it.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelIT _$ModelITFromJson(Map<String, dynamic> json) => ModelIT(
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

Map<String, dynamic> _$ModelITToJson(ModelIT instance) => <String, dynamic>{
      'link': instance.link,
      'rent': instance.rent,
      'flatrate': instance.flatrate,
      'buy': instance.buy,
    };
