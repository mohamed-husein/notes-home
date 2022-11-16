import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:notes_app/core/global/theme_color/theme_color_light.dart';

import '../../../core/error/failure.dart';
import '../../../core/utils/app_constants.dart';
import '../../data/model/user_model.dart';
import '../../data/repository/database_repository.dart';
import '../../presentation/screens/home_screen.dart';

part 'local_db_state.dart';

class LocalDbCubit extends Cubit<LocalDbState> {
  final DatabaseRepository repository;
  LocalDbCubit({required this.repository}) : super(LocalDbInitial());

  List<NotesModel> _maps = [];
  List<NotesModel> get maps => _maps;

  Future<void> getNotes() async {
    final result = await repository.getNotes();
    result.fold(
      (l) => emit(
        GetUserDataErrorState(
          message: _handleErrorMessage(l),
        ),
      ),
      (r) {
        _maps = r;
        emit(
          GetUserDataSuccessState(maps: r),
        );
      },
    );
  }

  Future<void> insertNote(NotesModel notesModel) async {
    final result = await repository.insertToDatabase(notesModel);
    result.fold(
      (l) => emit(
        GetUserDataErrorState(
          message: _handleErrorMessage(l),
        ),
      ),
      (r) {
        getNotes();
      },
    );
  }

    Future<void> delete(int id) async {
    final result = await repository.deleteDatabase(id);
    result.fold(
      (l) => emit(
        GetUserDataErrorState(
          message: _handleErrorMessage(l),
        ),
      ),
      (r) {
        getNotes();
      },
    );
  }

  Future<void> updateNote(NotesModel notesModel, context,int id) async {
    final result = await repository.updateDatabase(notesModel,id);
    result.fold(
      (l) => emit(
        GetUserDataErrorState(
          message: _handleErrorMessage(l),
        ),
      ),
      (r) {
    
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
            (route) => false);
        emit(UpdateNotesSuccess());
      },
    );
  }

  Color colorsIndex = ThemeColorLight.defualtGridColor;
  setGridColor(List<Color> color, int index) {
    colorsIndex = color[index];
    emit(ChangeColorSuccessState());
  }

  String _handleErrorMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return AppConstants.serverFailure;
      default:
        return AppConstants.unExpectedFailure;
    }
  }
}
