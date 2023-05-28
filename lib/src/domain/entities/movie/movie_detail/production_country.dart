import 'package:equatable/equatable.dart';

class ProductionCountry extends Equatable {
  final String? iso31661;
  final String? name;

  const ProductionCountry({this.iso31661, this.name});

  @override
  List<Object?> get props => [iso31661, name];
}
