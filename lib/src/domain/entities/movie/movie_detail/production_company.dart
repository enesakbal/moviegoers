import 'package:equatable/equatable.dart';

class ProductionCompany extends Equatable {
  final int? id;
  final String? logoPath;
  final String? name;
  final String? originCountry;

  const ProductionCompany({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  @override
  List<Object?> get props => [id, logoPath, name, originCountry];
}
