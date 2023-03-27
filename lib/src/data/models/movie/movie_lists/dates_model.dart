import 'package:equatable/equatable.dart';

import '../../../../domain/entities/movie/movie_list/dates.dart';

class DatesModel extends Equatable {
  const DatesModel({
    this.maximum,
    this.minimum,
  });

  final DateTime? maximum;
  final DateTime? minimum;

  factory DatesModel.fromJson(Map<String, dynamic> json) => DatesModel(
        maximum: DateTime.parse(json['maximum'] as String),
        minimum: DateTime.parse(json['minimum'] as String),
      );

  Map<String, dynamic> toJson() => {
        'maximum':
            "${maximum!.year.toString().padLeft(4, '0')}-${maximum!.month.toString().padLeft(2, '0')}-${maximum!.day.toString().padLeft(2, '0')}",
        'minimum':
            "${minimum!.year.toString().padLeft(4, '0')}-${minimum!.month.toString().padLeft(2, '0')}-${minimum!.day.toString().padLeft(2, '0')}",
      };

  Dates toEntity() => Dates(
        maximum: maximum,
        minimum: minimum,
      );

  @override
  List<Object?> get props => [maximum, minimum];
}
