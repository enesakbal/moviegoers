import 'package:equatable/equatable.dart';

class Dates extends Equatable {
  const Dates({
    this.maximum,
    this.minimum,
  });

  final DateTime? maximum;
  final DateTime? minimum;

  factory Dates.fromJson(Map<String, dynamic> json) => Dates(
        maximum: DateTime.parse(json['maximum'] as String),
        minimum: DateTime.parse(json['minimum'] as String),
      );

  Map<String, dynamic> toJson() => {
        'maximum':
            "${maximum!.year.toString().padLeft(4, '0')}-${maximum!.month.toString().padLeft(2, '0')}-${maximum!.day.toString().padLeft(2, '0')}",
        'minimum':
            "${minimum!.year.toString().padLeft(4, '0')}-${minimum!.month.toString().padLeft(2, '0')}-${minimum!.day.toString().padLeft(2, '0')}",
      };

  @override
  List<Object?> get props => [maximum, minimum];
}
