import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../provider_model.dart';

part 'model_jp.g.dart';

@JsonSerializable()
class ModelJP extends Equatable {
  final String? link;
  final List<ProviderModel>? rent;
  final List<ProviderModel>? flatrate;
  final List<ProviderModel>? buy;

  const ModelJP({this.link, this.rent, this.flatrate, this.buy});

  factory ModelJP.fromJson(Map<String, dynamic> json) => _$ModelJPFromJson(json);

  Map<String, dynamic> toJson() => _$ModelJPToJson(this);

  @override
  List<Object?> get props => [link, rent, flatrate, buy];
}
