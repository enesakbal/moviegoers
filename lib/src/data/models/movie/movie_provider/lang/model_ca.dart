import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../provider_model.dart';

part 'model_ca.g.dart';

@JsonSerializable()
class ModelCA extends Equatable {
  final String? link;
  final List<ProviderModel>? rent;
  final List<ProviderModel>? flatrate;
  final List<ProviderModel>? buy;

  const ModelCA({this.link, this.rent, this.flatrate, this.buy});

  factory ModelCA.fromJson(Map<String, dynamic> json) => _$ModelCAFromJson(json);

  Map<String, dynamic> toJson() => _$ModelCAToJson(this);

  @override
  List<Object?> get props => [link, rent, flatrate, buy];

  
}
