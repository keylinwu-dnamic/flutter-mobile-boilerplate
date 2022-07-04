import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:boilerplate/models/category_main_item.dart';

part 'alcoholic.g.dart';

@JsonSerializable()
class Alcoholic implements CategoryMainItem {
  @override
  @JsonKey(name: 'strAlcoholic')
  final String name;

  Alcoholic({required this.name});

  factory Alcoholic.fromJson(Map<String, dynamic> json) =>
      _$AlcoholicFromJson(json);

  Map<String, dynamic> toJson() => _$AlcoholicToJson(this);
}
