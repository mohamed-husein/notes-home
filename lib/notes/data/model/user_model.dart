import 'package:equatable/equatable.dart';

import '../../../core/utils/app_constants.dart';

class NotesModel extends Equatable {
  final int? id;
  final String title;
  final String body;
  final String color;

  const NotesModel({
    required this.title,
    required this.body,
    required this.color,
    this.id,
  });

  @override
  List<Object?> get props => [id, title, body, color];

  Map<String, dynamic> toJson() {
    return {
      AppConstants.columnTitle: title,
      AppConstants.columnBody: body,
      AppConstants.columnColor: color,
    };
  }

  factory NotesModel.fromJson(Map<String, dynamic> json) {
    return NotesModel(
      title: json[AppConstants.columnTitle],
      body: json[AppConstants.columnBody],
      color: json[AppConstants.columnColor],
      id: json[AppConstants.columnId],
    );
  }
}
