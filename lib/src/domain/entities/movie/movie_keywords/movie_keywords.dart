import 'keyword.dart';

class MovieKeywords {
  int? id;
  List<Keyword>? keywords;

  MovieKeywords({this.id, this.keywords});

  factory MovieKeywords.fromJson(Map<String, dynamic> json) => MovieKeywords(
        id: json['id'] as int?,
        keywords:
            (json['keywords'] as List<dynamic>?)?.map((e) => Keyword.fromJson(e as Map<String, dynamic>)).toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'keywords': keywords?.map((e) => e.toJson()).toList(),
      };
}
