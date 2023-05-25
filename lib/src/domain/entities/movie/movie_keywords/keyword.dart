class Keyword {
  int? id;
  String? name;

  Keyword({this.id, this.name});

  factory Keyword.fromJson(Map<String, dynamic> json) => Keyword(
        id: json['id'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
