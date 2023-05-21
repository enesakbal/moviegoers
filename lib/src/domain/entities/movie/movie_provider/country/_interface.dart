import 'package:equatable/equatable.dart';

import '../provider_entity.dart';

abstract class ICountry extends Equatable {
  const ICountry({this.buy, this.flatrate, this.link, this.rent});

  final String? link;
  final List<ProviderEntity>? flatrate;
  final List<ProviderEntity>? rent;
  final List<ProviderEntity>? buy;

  @override
  List<Object?> get props => [link, flatrate, rent, buy];
}
