import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:boilerplate/models/category_main_item.dart';

part 'category.g.dart';

@JsonSerializable()
class Category implements CategoryMainItem {
  @override
  @JsonKey(name: 'strCategory')
  final String name;

  Category({required this.name});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
