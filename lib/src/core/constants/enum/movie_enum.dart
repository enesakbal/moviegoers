enum MovieListTypes { POPULAR, UPCOMING, NOWPLAYING, RECOMMENDED, SIMILIAR }

extension Extension on MovieListTypes {
  String name() {
    switch (this) {
      case MovieListTypes.POPULAR:
        return 'Popular';
      case MovieListTypes.UPCOMING:
        return 'Upcoming';
      case MovieListTypes.NOWPLAYING:
        return 'Now Playing';
      case MovieListTypes.RECOMMENDED:
        return 'Recommended';
      case MovieListTypes.SIMILIAR:
        return 'Similiar';
    }
  }
}
