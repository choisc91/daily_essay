import 'package:daily_essay/data/data_souce/essay_database_helper.dart';
import 'package:daily_essay/domain/model/essay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  test('database_test', () async {
    final database = await databaseFactoryFfi.openDatabase(inMemoryDatabasePath);
    await database.execute('CREATE TABLE essay (id INTEGER PRIMARY KEY AUTOINCREMENT, '
        'title TEXT, content TEXT, path TEXT, color INTEGER, timestamp INTEGER)');

    final helper = EssayDatabaseHelper(database);

    // 데이터 삽입.
    await helper.insertEssay(
      Essay(
        title: 'title 1',
        content: 'contents 1',
        path: 'image path 1',
        color: Colors.black.value,
        timestamp: DateTime.now().millisecondsSinceEpoch,
      ),
    );

    expect((await helper.getEssays()).length, 1);
  });
}
