import 'package:freezed_annotation/freezed_annotation.dart';

part 'alcohol.g.dart';

@JsonSerializable()
class Alcohol {
  @JsonKey(name: 'strAlcoholic')
  final String name;

  Alcohol({required this.name});

  factory Alcohol.fromJson(Map<String, dynamic> json) =>
      _$AlcoholFromJson(json);

  Map<String, dynamic> toJson() => _$AlcoholToJson(this);
}
