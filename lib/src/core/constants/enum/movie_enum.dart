enum MovieListTypes { POPULAR, UPCOMING, NOWPLAYING }

extension Extension on MovieListTypes {
  String name() {
    switch (this) {
      case MovieListTypes.POPULAR:
        return 'Popular';
      case MovieListTypes.UPCOMING:
        return 'Upcoming';
      case MovieListTypes.NOWPLAYING:
        return 'Now Playing';
    }
  }
}
