import '_interface.dart';

class GB extends ICountry {
  const GB({super.buy, super.flatrate, super.link, super.rent});

  @override
  List<Object?> get props => [link, flatrate, rent, buy];
}
