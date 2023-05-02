import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../provider_model.dart';

part 'model_ru.g.dart';

@JsonSerializable()
class ModelRU extends Equatable {
  final String? link;
  final List<ProviderModel>? rent;
  final List<ProviderModel>? flatrate;
  final List<ProviderModel>? buy;

  const ModelRU({this.link, this.rent, this.flatrate, this.buy});

  factory ModelRU.fromJson(Map<String, dynamic> json) => _$ModelRUFromJson(json);

  Map<String, dynamic> toJson() => _$ModelRUToJson(this);

  @override
  List<Object?> get props => [link, rent, flatrate, buy];
}
