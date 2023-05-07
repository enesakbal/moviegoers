import '_interface.dart';

class IN extends ICountry {
  const IN({super.buy, super.flatrate, super.link, super.rent});

  @override
  List<Object?> get props => [link, flatrate, rent, buy];
}
