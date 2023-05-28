import 'package:equatable/equatable.dart';

class MovieVideoDetail extends Equatable {
  final String? iso6391;
  final String? iso31661;
  final String? name;
  final String? key;
  final String? site;
  final int? size;
  final String? type;
  final bool? official;
  final DateTime? publishedAt;
  final String? id;

  const MovieVideoDetail({
    this.iso6391,
    this.iso31661,
    this.name,
    this.key,
    this.site,
    this.size,
    this.type,
    this.official,
    this.publishedAt,
    this.id,
  });

  @override
  List<Object?> get props {
    return [
      iso6391,
      iso31661,
      name,
      key,
      site,
      size,
      type,
      official,
      publishedAt,
      id,
    ];
  }
}
