import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../provider_model.dart';

part 'model_in.g.dart';

@JsonSerializable()
class ModelIN extends Equatable {
  final String? link;
  final List<ProviderModel>? rent;
  final List<ProviderModel>? flatrate;
  final List<ProviderModel>? buy;

  const ModelIN({this.link, this.rent, this.flatrate, this.buy});

  factory ModelIN.fromJson(Map<String, dynamic> json) => _$ModelINFromJson(json);

  Map<String, dynamic> toJson() => _$ModelINToJson(this);

  @override
  List<Object?> get props => [link, rent, flatrate, buy];
}
