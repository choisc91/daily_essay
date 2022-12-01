// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'essay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Essay _$$_EssayFromJson(Map<String, dynamic> json) => _$_Essay(
      title: json['title'] as String,
      content: json['content'] as String,
      path: json['path'] as String,
      color: json['color'] as int,
      timestamp: json['timestamp'] as int,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_EssayToJson(_$_Essay instance) => <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'path': instance.path,
      'color': instance.color,
      'timestamp': instance.timestamp,
      'id': instance.id,
    };
