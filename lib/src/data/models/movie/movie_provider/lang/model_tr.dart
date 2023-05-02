import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../provider_model.dart';

part 'model_tr.g.dart';

@JsonSerializable()
class ModelTR extends Equatable {
  final String? link;
  final List<ProviderModel>? rent;
  final List<ProviderModel>? flatrate;
  final List<ProviderModel>? buy;

  const ModelTR({this.link, this.rent, this.flatrate, this.buy});

  factory ModelTR.fromJson(Map<String, dynamic> json) => _$ModelTRFromJson(json);

  Map<String, dynamic> toJson() => _$ModelTRToJson(this);

  @override
  List<Object?> get props => [link, rent, flatrate, buy];
}
