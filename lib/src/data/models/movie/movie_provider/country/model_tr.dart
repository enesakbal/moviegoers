import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../domain/entities/movie/movie_provider/country/_export.dart';
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

  TR toEntity() => TR(
        link: link,
        rent: rent == null ? null : rent!.map((e) => e.toEntity()).toList(),
        flatrate: flatrate == null ? null : flatrate!.map((e) => e.toEntity()).toList(),
        buy: buy == null ? null : buy!.map((e) => e.toEntity()).toList(),
      );
}
