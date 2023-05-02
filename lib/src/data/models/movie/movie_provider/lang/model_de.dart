import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../provider_model.dart';

part 'model_de.g.dart';

@JsonSerializable()
class ModelDE extends Equatable {
  final String? link;
  final List<ProviderModel>? rent;
  final List<ProviderModel>? flatrate;
  final List<ProviderModel>? buy;

  const ModelDE({this.link, this.rent, this.flatrate, this.buy});

  factory ModelDE.fromJson(Map<String, dynamic> json) => _$ModelDEFromJson(json);

  Map<String, dynamic> toJson() => _$ModelDEToJson(this);

  @override
  List<Object?> get props => [link, rent, flatrate, buy];
}
