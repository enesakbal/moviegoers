import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../provider_model.dart';

part 'model_it.g.dart';

@JsonSerializable()
class ModelIT extends Equatable {
  final String? link;
  final List<ProviderModel>? rent;
  final List<ProviderModel>? flatrate;
  final List<ProviderModel>? buy;

  const ModelIT({this.link, this.rent, this.flatrate, this.buy});

  factory ModelIT.fromJson(Map<String, dynamic> json) => _$ModelITFromJson(json);

  Map<String, dynamic> toJson() => _$ModelITToJson(this);

  @override
  List<Object?> get props => [link, rent, flatrate, buy];
}
