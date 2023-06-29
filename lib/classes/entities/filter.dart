import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.g.dart';

@JsonSerializable()
class Filter {
  @JsonKey(name: 'strAlcoholic')
  final String name;

  Filter({required this.name});

  factory Filter.fromJson(Map<String, dynamic> json) => _$FilterFromJson(json);

  Map<String, dynamic> toJson() => _$FilterToJson(this);
}
