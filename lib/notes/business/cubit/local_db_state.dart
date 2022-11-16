part of 'local_db_cubit.dart';

abstract class LocalDbState extends Equatable {
  const LocalDbState();

  @override
  List<Object> get props => [];
}

class LocalDbInitial extends LocalDbState {}
class UpdateNotesSuccess extends LocalDbState {}
class ChangeColorSuccessState extends LocalDbState {}

class GetUserDataSuccessState extends LocalDbState {
  final List<NotesModel> maps;

  const GetUserDataSuccessState({required this.maps});
}

class GetUserDataErrorState extends LocalDbState {
  final String message;

  const GetUserDataErrorState({required this.message});
}
