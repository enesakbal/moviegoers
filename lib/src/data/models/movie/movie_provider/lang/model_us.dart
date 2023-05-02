import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../provider_model.dart';

part 'model_us.g.dart';

@JsonSerializable()
class ModelUS extends Equatable {
  final String? link;
  final List<ProviderModel>? rent;
  final List<ProviderModel>? flatrate;
  final List<ProviderModel>? buy;

  const ModelUS({this.link, this.rent, this.flatrate, this.buy});

  factory ModelUS.fromJson(Map<String, dynamic> json) => _$ModelUSFromJson(json);

  Map<String, dynamic> toJson() => _$ModelUSToJson(this);

  @override
  List<Object?> get props => [link, rent, flatrate, buy];
}
