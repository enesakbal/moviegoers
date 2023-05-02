import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../provider_model.dart';

part 'model_kr.g.dart';

@JsonSerializable()
class ModelKR extends Equatable {
  final String? link;
  final List<ProviderModel>? rent;
  final List<ProviderModel>? flatrate;
  final List<ProviderModel>? buy;

  const ModelKR({this.link, this.rent, this.flatrate, this.buy});

  factory ModelKR.fromJson(Map<String, dynamic> json) => _$ModelKRFromJson(json);

  Map<String, dynamic> toJson() => _$ModelKRToJson(this);

  @override
  List<Object?> get props => [link, rent, flatrate, buy];
}
