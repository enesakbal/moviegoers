import '_interface.dart';

class TR extends ICountry {
  const TR({super.buy, super.flatrate, super.link, super.rent});

  @override
  List<Object?> get props => [link, flatrate, rent, buy];
}
