enum MovieListTypes { POPULAR, UPCOMING, NOWPLAYING, RECOMMENDED, SIMILIAR, TOPRATED }

extension Extension on MovieListTypes {
  String name() {
    switch (this) {
      case MovieListTypes.POPULAR:
        return 'Popular';
      case MovieListTypes.UPCOMING:
        return 'Upcoming';
      case MovieListTypes.NOWPLAYING:
        return 'Now Playing';
      case MovieListTypes.TOPRATED:
        return 'Top Rated';
      case MovieListTypes.RECOMMENDED:
        return 'Recommended';
      case MovieListTypes.SIMILIAR:
        return 'Similiar';
    }
  }
}
