import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/movie/movie_provider/provider_entity.dart';

part 'provider_model.g.dart';

@JsonSerializable()
class ProviderModel extends Equatable {
  @JsonKey(name: 'display_priority')
  final int? displayPriority;
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  @JsonKey(name: 'provider_id')
  final int? providerId;
  @JsonKey(name: 'provider_name')
  final String? providerName;

  const ProviderModel({
    this.displayPriority,
    this.logoPath,
    this.providerId,
    this.providerName,
  });

  factory ProviderModel.fromJson(Map<String, dynamic> json) => _$ProviderModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProviderModelToJson(this);

  @override
  List<Object?> get props {
    return [
      displayPriority,
      logoPath,
      providerId,
      providerName,
    ];
  }

  ProviderEntity toEntity() => ProviderEntity(
        displayPriority: displayPriority,
        logoPath: logoPath,
        providerId: providerId,
        providerName: providerName,
      );
}
