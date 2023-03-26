import 'dart:convert';

import 'package:equatable/equatable.dart';

class MovieExternalId extends Equatable {
  final String? imdbId;
  final String? facebookId;
  final String? instagramId;
  final String? twitterId;
  final int? id;

  const MovieExternalId({
    this.imdbId,
    this.facebookId,
    this.instagramId,
    this.twitterId,
    this.id,
  });

  factory MovieExternalId.fromMap(Map<String, dynamic> data) {
    return MovieExternalId(
      imdbId: data['imdb_id'] as String?,
      facebookId: data['facebook_id'] as String?,
      instagramId: data['instagram_id'] as String?,
      twitterId: data['twitter_id'] as String?,
      id: data['id'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'imdb_id': imdbId,
        'facebook_id': facebookId,
        'instagram_id': instagramId,
        'twitter_id': twitterId,
        'id': id,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MovieExternalId].
  factory MovieExternalId.fromJson(String data) {
    return MovieExternalId.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MovieExternalId] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
      imdbId,
      facebookId,
      instagramId,
      twitterId,
      id,
    ];
  }
}
