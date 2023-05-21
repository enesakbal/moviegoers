import '_interface.dart';

class FR extends ICountry {
  const FR({super.buy, super.flatrate, super.link, super.rent});

  @override
  List<Object?> get props => [link, flatrate, rent, buy];
}
