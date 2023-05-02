// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_in.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelIN _$ModelINFromJson(Map<String, dynamic> json) => ModelIN(
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

Map<String, dynamic> _$ModelINToJson(ModelIN instance) => <String, dynamic>{
      'link': instance.link,
      'rent': instance.rent,
      'flatrate': instance.flatrate,
      'buy': instance.buy,
    };
