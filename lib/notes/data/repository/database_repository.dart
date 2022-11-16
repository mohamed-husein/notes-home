import '../../../core/error/exceptions.dart';
import '../../../core/error/failure.dart';
import '../../../core/utils/import_files.dart';
import '../helper/database_helper.dart';
import '../model/user_model.dart';

class DatabaseRepository {
  final DatabaseHelper databaseHelper;

  DatabaseRepository({required this.databaseHelper});

  Future<Either<Failure, List<NotesModel>>> getNotes() async {
    final result = await databaseHelper.getAllNotes();
    try {
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, int>> insertToDatabase(
      NotesModel notesModel) async {
    final result = await databaseHelper.insertNote(notesModel);
    try {
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

   Future<Either<Failure, int>> deleteDatabase(
      int id ) async {
    final result = await databaseHelper.deleteNotes(id);
    try {
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }


  Future<Either<Failure, int>> updateDatabase(
      NotesModel notesModel,int id) async {
    int result = await databaseHelper.updateNote(notesModel,id);
    try {
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
