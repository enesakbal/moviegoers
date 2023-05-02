import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../domain/entities/movie_provider/lang/_export.dart';
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

  RU toEntity() => RU(
        link: link,
        rent: rent == null ? null : rent!.map((e) => e.toEntity()).toList(),
        flatrate: flatrate == null ? null : flatrate!.map((e) => e.toEntity()).toList(),
        buy: buy == null ? null : buy!.map((e) => e.toEntity()).toList(),
      );
}
