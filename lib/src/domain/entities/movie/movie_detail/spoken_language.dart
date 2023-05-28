import 'package:equatable/equatable.dart';

class SpokenLanguage extends Equatable {
  final String? iso6391;
  final String? name;

  const SpokenLanguage({this.iso6391, this.name});

  @override
  List<Object?> get props => [iso6391, name];
}
