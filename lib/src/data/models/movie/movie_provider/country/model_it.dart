import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../domain/entities/movie_provider/country/_export.dart';
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

  IT toEntity() => IT(
        link: link,
        rent: rent == null ? null : rent!.map((e) => e.toEntity()).toList(),
        flatrate: flatrate == null ? null : flatrate!.map((e) => e.toEntity()).toList(),
        buy: buy == null ? null : buy!.map((e) => e.toEntity()).toList(),
      );
}
