import 'package:freezed_annotation/freezed_annotation.dart';

part 'glass.g.dart';

@JsonSerializable()
class Glass {
  @JsonKey(name: 'strGlass')
  final String name;

  Glass({required this.name});

  factory Glass.fromJson(Map<String, dynamic> json) => _$GlassFromJson(json);

  Map<String, dynamic> toJson() => _$GlassToJson(this);
}
