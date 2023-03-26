import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'cast.dart';

class MovieCredit extends Equatable {
  final int? id;
  final List<Cast>? cast;

  const MovieCredit({this.id, this.cast});

  factory MovieCredit.fromMap(Map<String, dynamic> data) => MovieCredit(
        id: data['id'] as int?,
        cast: (data['cast'] as List<dynamic>?)
            ?.map((e) => Cast.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'cast': cast?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MovieCredit].
  factory MovieCredit.fromJson(String data) {
    return MovieCredit.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MovieCredit] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [id, cast];
}
