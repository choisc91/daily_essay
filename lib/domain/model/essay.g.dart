// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'essay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Essay _$$_EssayFromJson(Map<String, dynamic> json) => _$_Essay(
      essay: json['essay'] as String,
      path: json['path'] as String,
      timestamp: json['timestamp'] as int,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_EssayToJson(_$_Essay instance) => <String, dynamic>{
      'essay': instance.essay,
      'path': instance.path,
      'timestamp': instance.timestamp,
      'id': instance.id,
    };
