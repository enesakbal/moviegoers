import '_interface.dart';

class KR extends ICountry {
  const KR({super.buy, super.flatrate, super.link, super.rent});

  @override
  List<Object?> get props => [link, flatrate, rent, buy];
}
