import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../provider_model.dart';

part 'model_fr.g.dart';

@JsonSerializable()
class ModelFR extends Equatable {
  final String? link;
  final List<ProviderModel>? rent;
  final List<ProviderModel>? flatrate;
  final List<ProviderModel>? buy;

  const ModelFR({this.link, this.rent, this.flatrate, this.buy});

  factory ModelFR.fromJson(Map<String, dynamic> json) => _$ModelFRFromJson(json);

  Map<String, dynamic> toJson() => _$ModelFRToJson(this);

  @override
  List<Object?> get props => [link, rent, flatrate, buy];
}
