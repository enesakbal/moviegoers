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
