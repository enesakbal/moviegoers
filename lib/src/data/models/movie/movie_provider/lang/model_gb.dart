import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../provider_model.dart';

part 'model_gb.g.dart';

@JsonSerializable()
class ModelGB extends Equatable {
  final String? link;
  final List<ProviderModel>? rent;
  final List<ProviderModel>? flatrate;
  final List<ProviderModel>? buy;

  const ModelGB({this.link, this.rent, this.flatrate, this.buy});

  factory ModelGB.fromJson(Map<String, dynamic> json) => _$ModelGBFromJson(json);

  Map<String, dynamic> toJson() => _$ModelGBToJson(this);

  @override
  List<Object?> get props => [link, rent, flatrate, buy];
}
