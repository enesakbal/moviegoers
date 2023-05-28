import '../../movie/movie/movie.dart';
import '../cast/cast.dart';

class SearhCast extends Cast {
  final List<Movie>? knownFor;

  const SearhCast({
    super.adult,
    super.gender,
    super.id,
    super.knownForDepartment,
    super.name,
    super.originalName,
    super.popularity,
    super.profilePath,
    this.knownFor,
  });

  @override
  List<Object?> get props => super.props + [knownFor];
}
