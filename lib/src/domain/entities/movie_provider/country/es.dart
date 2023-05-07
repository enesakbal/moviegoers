import '_interface.dart';

class ES extends ICountry {
  const ES({super.buy, super.flatrate, super.link, super.rent});

  @override
  List<Object?> get props => [link, flatrate, rent, buy];
}
