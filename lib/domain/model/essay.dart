import 'package:freezed_annotation/freezed_annotation.dart';

part 'essay.freezed.dart';

part 'essay.g.dart';

@Freezed()
class Essay with _$Essay {
  factory Essay({
    required String essay,
    required String path,
    required int timestamp,
    int? id,
  }) = _Essay;

  factory Essay.fromJson(Map<String, dynamic> json) => _$EssayFromJson(json);
}
