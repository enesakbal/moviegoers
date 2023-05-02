import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../provider_model.dart';

part 'model_es.g.dart';

@JsonSerializable()
class ModelES extends Equatable {
  final String? link;
  final List<ProviderModel>? rent;
  final List<ProviderModel>? flatrate;
  final List<ProviderModel>? buy;

  const ModelES({this.link, this.rent, this.flatrate, this.buy});

  factory ModelES.fromJson(Map<String, dynamic> json) => _$ModelESFromJson(json);

  Map<String, dynamic> toJson() => _$ModelESToJson(this);

  @override
  List<Object?> get props => [link, rent, flatrate, buy];
}
