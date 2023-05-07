import '_interface.dart';

class US extends ICountry {
  const US({super.buy, super.flatrate, super.link, super.rent});

  @override
  List<Object?> get props => [link, flatrate, rent, buy];
}
