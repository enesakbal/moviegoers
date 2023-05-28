import '../cast/cast.dart';

class MovieCast extends Cast {
  final int? castId;
  final String? character;
  final String? creditId;
  final int? order;

  const MovieCast({
    super.adult,
    super.gender,
    super.id,
    super.knownForDepartment,
    super.name,
    super.originalName,
    super.popularity,
    super.profilePath,
    this.castId,
    this.character,
    this.creditId,
    this.order,
  });

  @override
  List<Object?> get props => super.props + [castId, character, creditId, order];
}
