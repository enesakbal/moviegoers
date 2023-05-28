import 'package:equatable/equatable.dart';

class Keyword extends Equatable {
  final int? id;
  final String? name;

  const Keyword({this.id, this.name});

  @override
  List<Object?> get props => [id, name];
}
