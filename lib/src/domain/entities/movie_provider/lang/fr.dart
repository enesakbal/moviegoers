import 'package:equatable/equatable.dart';

import '../provider_entity.dart';

class FR extends Equatable {
  final String? link;
  final List<ProviderEntity>? flatrate;
  final List<ProviderEntity>? rent;
  final List<ProviderEntity>? buy;

  const FR({this.link, this.flatrate, this.rent, this.buy});

  @override
  List<Object?> get props => [link, flatrate, rent, buy];
}
