import 'package:daily_essay/domain/model/essay.dart';
import 'package:sqflite/sqflite.dart';

class EssayDatabaseHelper {
  //
  Database database;

  EssayDatabaseHelper(this.database);

  Future<Essay?> getNoteById(int id) {
    // todo, 아이템 아이디로 찾는 기능 구현.
    throw Error();
  }

  Future<List<Essay>> getEssays() async {
    // todo, db 에 저장된 모든 에세이 가져오는 기능 구현.
    throw Error();
  }

  Future<void> insertEssay(Essay item) async {
    // todo db 에 인자로 넘어온 아이템 삽입하는 기능 구현.
  }

  Future<void> updateEssay(Essay item) async {
    // todo db 에 인자로 넘어온 아이템 업데이트하는 기능 구현.
  }

  Future<void> deleteEssay(Essay item) async {
    // todo db 에 인지로 넘어온 아이템 삭제하는 기능 구현.
  }
}
