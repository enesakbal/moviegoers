import 'package:equatable/equatable.dart';

import 'country/_export.dart';

class ResultsEntity extends Equatable {
  final CA? ca;
  final DE? de;
  final US? us;
  final ES? es;
  final FR? fr;
  final GB? gb;
  final IN? ind;
  final IT? it;
  final JP? jp;
  final KR? kr;
  final TR? tr;
  final RU? ru;

  const ResultsEntity({
    this.ca,
    this.de,
    this.us,
    this.es,
    this.fr,
    this.gb,
    this.ind,
    this.it,
    this.jp,
    this.kr,
    this.tr,
    this.ru,
  });

  @override
  List<Object?> get props {
    return [
      ca,
      de,
      us,
      es,
      fr,
      gb,
      ind,
      it,
      jp,
      kr,
      tr,
      ru,
    ];
  }
}
