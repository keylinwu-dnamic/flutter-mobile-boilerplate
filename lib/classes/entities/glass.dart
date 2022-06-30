import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:boilerplate/models/category_main_item.dart';

part 'glass.g.dart';

@JsonSerializable()
class Glass implements CategoryMainItem {
  @override
  @JsonKey(name: 'strGlass')
  final String name;

  Glass({required this.name});

  factory Glass.fromJson(Map<String, dynamic> json) => _$GlassFromJson(json);

  Map<String, dynamic> toJson() => _$GlassToJson(this);
}
