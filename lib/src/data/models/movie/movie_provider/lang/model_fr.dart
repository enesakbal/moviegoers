import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../domain/entities/movie_provider/lang/_export.dart';
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

  FR toEntity() => FR(
        link: link,
        rent: rent == null ? null : rent!.map((e) => e.toEntity()).toList(),
        flatrate: flatrate == null ? null : flatrate!.map((e) => e.toEntity()).toList(),
        buy: buy == null ? null : buy!.map((e) => e.toEntity()).toList(),
      );
}
