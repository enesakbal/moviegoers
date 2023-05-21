import '_interface.dart';

class RU extends ICountry {
  const RU({super.buy, super.flatrate, super.link, super.rent});

  @override
  List<Object?> get props => [link, flatrate, rent, buy];
}
