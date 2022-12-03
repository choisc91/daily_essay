import 'package:daily_essay/data/data_souce/database_helper.dart';
import 'package:daily_essay/domain/model/essay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  test('database_test', () async {
    final database = await databaseFactoryFfi.openDatabase(inMemoryDatabasePath);
    await database.execute('CREATE TABLE essay (id INTEGER PRIMARY KEY AUTOINCREMENT, '
        'title TEXT, content TEXT, path TEXT, timestamp INTEGER)');
  });
}
