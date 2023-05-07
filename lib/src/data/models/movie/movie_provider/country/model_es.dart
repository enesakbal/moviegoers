import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../domain/entities/movie_provider/country/_export.dart';
import '../provider_model.dart';

part 'model_es.g.dart';

@JsonSerializable()
class ModelES extends Equatable {
  final String? link;
  final List<ProviderModel>? rent;
  final List<ProviderModel>? flatrate;
  final List<ProviderModel>? buy;

  const ModelES({this.link, this.rent, this.flatrate, this.buy});

  factory ModelES.fromJson(Map<String, dynamic> json) => _$ModelESFromJson(json);

  Map<String, dynamic> toJson() => _$ModelESToJson(this);

  @override
  List<Object?> get props => [link, rent, flatrate, buy];

  ES toEntity() => ES(
        link: link,
        rent: rent == null ? null : rent!.map((e) => e.toEntity()).toList(),
        flatrate: flatrate == null ? null : flatrate!.map((e) => e.toEntity()).toList(),
        buy: buy == null ? null : buy!.map((e) => e.toEntity()).toList(),
      );
}
