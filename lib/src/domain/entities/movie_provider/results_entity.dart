import 'package:equatable/equatable.dart';

import 'lang/_export.dart';

class ResultsEntity extends Equatable {
  final CN? cn;
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
    this.cn,
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
      cn,
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
