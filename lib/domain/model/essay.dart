import 'package:freezed_annotation/freezed_annotation.dart';

part 'essay.freezed.dart';

part 'essay.g.dart';

@Freezed()
class Essay with _$Essay {
  factory Essay({
    required String title,
    required String content,
    required String path,
    required int color,
    required int timestamp,
    int? id,
  }) = _Essay;

  factory Essay.fromJson(Map<String, dynamic> json) => _$EssayFromJson(json);
}
