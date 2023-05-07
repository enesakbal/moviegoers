import '_interface.dart';

class DE extends ICountry {
  const DE({super.buy, super.flatrate, super.link, super.rent});

  @override
  List<Object?> get props => [link, flatrate, rent, buy];
}
