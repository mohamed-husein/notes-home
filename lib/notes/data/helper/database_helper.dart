import 'package:path/path.dart';

import '../../../core/utils/app_constants.dart';
import '../../../core/utils/import_files.dart';
import '../model/user_model.dart';

class DatabaseHelper {
  static Database? _database;

  static final DatabaseHelper db = DatabaseHelper();

  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await initDb();
    return _database;
  }

  initDb() async {
    String path = join(await getDatabasesPath(), AppConstants.dbName);
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''CREATE TABLE ${AppConstants.tableName} (
          ${AppConstants.columnId} INTEGER PRIMARY KEY AUTOINCREMENT,
          ${AppConstants.columnTitle} TEXT NOT NULL,
          ${AppConstants.columnBody} TEXT NOT NULL,
          ${AppConstants.columnColor} TEXT NOT NULL)''');
      },
    );
  }

  Future<int> insertNote(NotesModel notesModel) async {
    Database? dbClient = await database;
    int resposne = await dbClient!.insert(
      AppConstants.tableName,
      notesModel.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return resposne;
  }

  Future<int> updateNote(NotesModel notesModel,int id) async {
    Database? dbClient = await database;
    int update = await dbClient!.update(
      AppConstants.tableName,
      notesModel.toJson(),
      where: '${AppConstants.columnId} = $id',
   
    );
    return update;
  }

  Future<List<NotesModel>> getAllNotes() async {
    Database? dbClient = await database;
    List<Map<String, dynamic>> maps = await dbClient!.query(
      AppConstants.tableName,
    );
    return maps.isNotEmpty
        ? maps.map((e) => NotesModel.fromJson(e)).toList()
        : [];
  }

  Future<int> deleteNotes(int id) async {
    Database? dbClient = await database;
    return await dbClient!.delete(
      AppConstants.tableName,
      where: '${AppConstants.columnId} = ?',
      whereArgs: [id],
    );
  }
}
