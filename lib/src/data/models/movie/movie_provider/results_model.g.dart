// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultsModel _$ResultsModelFromJson(Map<String, dynamic> json) => ResultsModel(
      ca: json['CA'] == null
          ? null
          : ModelCA.fromJson(json['CA'] as Map<String, dynamic>),
      de: json['DE'] == null
          ? null
          : ModelDE.fromJson(json['DE'] as Map<String, dynamic>),
      us: json['US'] == null
          ? null
          : ModelUS.fromJson(json['US'] as Map<String, dynamic>),
      es: json['ES'] == null
          ? null
          : ModelES.fromJson(json['ES'] as Map<String, dynamic>),
      fr: json['FR'] == null
          ? null
          : ModelFR.fromJson(json['FR'] as Map<String, dynamic>),
      gb: json['GB'] == null
          ? null
          : ModelGB.fromJson(json['GB'] as Map<String, dynamic>),
      ind: json['IN'] == null
          ? null
          : ModelIN.fromJson(json['IN'] as Map<String, dynamic>),
      it: json['IT'] == null
          ? null
          : ModelIT.fromJson(json['IT'] as Map<String, dynamic>),
      jp: json['JP'] == null
          ? null
          : ModelJP.fromJson(json['JP'] as Map<String, dynamic>),
      kr: json['KR'] == null
          ? null
          : ModelKR.fromJson(json['KR'] as Map<String, dynamic>),
      tr: json['TR'] == null
          ? null
          : ModelTR.fromJson(json['TR'] as Map<String, dynamic>),
      ru: json['RU'] == null
          ? null
          : ModelRU.fromJson(json['RU'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResultsModelToJson(ResultsModel instance) =>
    <String, dynamic>{
      'CA': instance.ca,
      'DE': instance.de,
      'US': instance.us,
      'ES': instance.es,
      'FR': instance.fr,
      'GB': instance.gb,
      'IN': instance.ind,
      'IT': instance.it,
      'JP': instance.jp,
      'KR': instance.kr,
      'TR': instance.tr,
      'RU': instance.ru,
    };
