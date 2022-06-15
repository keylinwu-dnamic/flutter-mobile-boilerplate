import 'package:freezed_annotation/freezed_annotation.dart';

part 'glass.g.dart';

@JsonSerializable()
class Glass {
  @JsonKey(name: 'strGlass')
  final String name;

  Glass({required this.name});

  // factory Glass.fromRawJson(String str) => Glass.fromJson(json.decode(str));
  // String toRawJson() => json.encode(toJson());

  factory Glass.fromJson(Map<String, dynamic> json) =>
      Glass(name: json["strGlass"]);
  Map<String, dynamic> toJson() => {"strGlass": name};
}
