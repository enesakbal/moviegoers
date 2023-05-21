import '_interface.dart';

class IT extends ICountry {
  const IT({super.buy, super.flatrate, super.link, super.rent});

  @override
  List<Object?> get props => [link, flatrate, rent, buy];
}
