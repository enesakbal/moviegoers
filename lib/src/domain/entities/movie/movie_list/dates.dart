import 'package:equatable/equatable.dart';

class Dates extends Equatable {
  const Dates({
    this.maximum,
    this.minimum,
  });

  final DateTime? maximum;
  final DateTime? minimum;

  @override
  List<Object?> get props => [maximum, minimum];
}
