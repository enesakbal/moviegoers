// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => ErrorModel(
      statusCode: json['status_code'] as int?,
      statusMessage: json['status_message'] as String?,
    );

Map<String, dynamic> _$ErrorModelToJson(ErrorModel instance) => <String, dynamic>{
      'status_code': instance.statusCode,
      'status_message': instance.statusMessage,
    };
