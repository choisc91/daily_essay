import 'package:daily_essay/domain/model/essay.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  Database database;

  DatabaseHelper(this.database);

  Future<Essay?> getNoteById(int id) async {
    final items = await database.query(
      'essay',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (items.isNotEmpty) {
      return Essay.fromJson(items.first);
    } else {
      return null;
    }
  }

  Future<List<Essay>> getEssays() async {
    final items = await database.query('essay');
    return items.map((e) => Essay.fromJson(e)).toList();
  }

  Future<void> insertEssay(Essay item) async {
    await database.insert('essay', item.toJson());
  }

  Future<void> updateEssay(Essay item) async {
    await database.update(
      'essay',
      item.toJson(),
      where: 'id = ?',
      whereArgs: [item.id],
    );
  }

  Future<void> deleteEssay(Essay item) async {
    await database.delete(
      'essay',
      where: 'id = ?',
      whereArgs: [item.id],
    );
  }
}
