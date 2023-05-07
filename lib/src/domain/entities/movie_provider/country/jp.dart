import '_interface.dart';

class JP extends ICountry {
  const JP({super.buy, super.flatrate, super.link, super.rent});

  @override
  List<Object?> get props => [link, flatrate, rent, buy];
}
