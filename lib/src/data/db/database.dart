import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseService {
  static final DatabaseService instance = DatabaseService._init();
  static Database? _database;
  DatabaseService._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('restaurants.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE tableName ( 
      id TEXT PRIMARY KEY NOT NULL, 
      name TEXT NOT NULL,
      description TEXT NOT NULL,
      )''');
  }

  Future<dynamic> create(dynamic data) async {
    final db = await instance.database;
    await db.insert("tableName", data.toJson());
    return data;
  }

  Future<dynamic> getById({required String id}) async {
    final db = await instance.database;

    final maps = await db.query(
      "tableName",
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return maps.first;
    } else {
      return null;
    }
  }

  Future<List<dynamic>> getAll() async {
    final db = await instance.database;
    const orderBy = 'timestamp ASC';
    final result = await db.query("tableName", orderBy: orderBy);

    return result.map((e) => e).toList();
  }

  Future<int> deleteById({required String id}) async {
    final db = await instance.database;

    return await db.delete(
      "tableName",
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
