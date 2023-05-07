import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/movie_provider/results_entity.dart';
import 'country/_export.dart';

part 'results_model.g.dart';

@JsonSerializable()
class ResultsModel extends Equatable {
  @JsonKey(name: 'CA')
  final ModelCA? ca;
  @JsonKey(name: 'DE')
  final ModelDE? de;
  @JsonKey(name: 'US')
  final ModelUS? us;
  @JsonKey(name: 'ES')
  final ModelES? es;
  @JsonKey(name: 'FR')
  final ModelFR? fr;
  @JsonKey(name: 'GB')
  final ModelGB? gb;
  @JsonKey(name: 'IN')
  final ModelIN? ind;
  @JsonKey(name: 'IT')
  final ModelIT? it;
  @JsonKey(name: 'JP')
  final ModelJP? jp;
  @JsonKey(name: 'KR')
  final ModelKR? kr;
  @JsonKey(name: 'TR')
  final ModelTR? tr;
  @JsonKey(name: 'RU')
  final ModelRU? ru;
  const ResultsModel({
    this.ca,
    this.de,
    this.us,
    this.es,
    this.fr,
    this.gb,
    this.ind,
    this.it,
    this.jp,
    this.kr,
    this.tr,
    this.ru,
  });

  factory ResultsModel.fromJson(Map<String, dynamic> json) {
    return _$ResultsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultsModelToJson(this);

  @override
  List<Object?> get props {
    return [
      ca,
      de,
      us,
      es,
      fr,
      gb,
      ind,
      it,
      jp,
      kr,
      tr,
      ru,
    ];
  }

  ResultsEntity toEntity() => ResultsEntity(
        ca: ca == null ? null : ca!.toEntity(),
        de: de == null ? null : de!.toEntity(),
        us: us == null ? null : us!.toEntity(),
        es: es == null ? null : es!.toEntity(),
        fr: fr == null ? null : fr!.toEntity(),
        gb: gb == null ? null : gb!.toEntity(),
        ind: ind == null ? null : ind!.toEntity(),
        it: it == null ? null : it!.toEntity(),
        jp: jp == null ? null : jp!.toEntity(),
        kr: kr == null ? null : kr!.toEntity(),
        tr: tr == null ? null : tr!.toEntity(),
        ru: ru == null ? null : ru!.toEntity(),
      );
}
