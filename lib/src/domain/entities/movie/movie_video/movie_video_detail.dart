import 'dart:convert';

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

  factory MovieVideoDetail.fromMap(Map<String, dynamic> data) => MovieVideoDetail(
        iso6391: data['iso_639_1'] as String?,
        iso31661: data['iso_3166_1'] as String?,
        name: data['name'] as String?,
        key: data['key'] as String?,
        site: data['site'] as String?,
        size: data['size'] as int?,
        type: data['type'] as String?,
        official: data['official'] as bool?,
        publishedAt: data['published_at'] == null ? null : DateTime.parse(data['published_at'] as String),
        id: data['id'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'iso_639_1': iso6391,
        'iso_3166_1': iso31661,
        'name': name,
        'key': key,
        'site': site,
        'size': size,
        'type': type,
        'official': official,
        'published_at': publishedAt?.toIso8601String(),
        'id': id,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the MovieVideoDetailing Json object as [MovieVideoDetail].
  factory MovieVideoDetail.fromJson(String data) {
    return MovieVideoDetail.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MovieVideoDetail] to a JSON string.
  String toJson() => json.encode(toMap());

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
