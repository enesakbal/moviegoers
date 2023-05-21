import '_interface.dart';

class CA extends ICountry {
  const CA({super.buy, super.flatrate, super.link, super.rent});

  @override
  List<Object?> get props => [link, flatrate, rent, buy];
}
