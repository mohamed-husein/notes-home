import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notes_app/core/utils/app_assets.dart';
import 'package:notes_app/core/utils/app_sizes.dart';
import 'package:notes_app/notes/business/cubit/local_db_cubit.dart';
import 'package:notes_app/notes/data/helper/database_helper.dart';
import 'package:notes_app/notes/data/model/user_model.dart';
import 'package:notes_app/notes/data/repository/database_repository.dart';
import 'package:notes_app/notes/presentation/screens/home_screen.dart';
import 'package:notes_app/notes/presentation/widgets/color_widget.dart';

class AddNoteScreen extends StatelessWidget {
  AddNoteScreen({super.key});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalDbCubit(
          repository: DatabaseRepository(databaseHelper: DatabaseHelper())),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            BlocBuilder<LocalDbCubit, LocalDbState>(builder: (context, staet) {
              LocalDbCubit cubit = BlocProvider.of<LocalDbCubit>(context);
              return IconButton(
                onPressed: () {
                  cubit.insertNote(
                    NotesModel(
                      title: titleController.text,
                      body: bodyController.text,
                      color: BlocProvider.of<LocalDbCubit>(context)
                          .colorsIndex
                          .value
                          .toString(),
                    ),
                  );
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                      (route) => false);
                },
                icon: Padding(
                  padding: EdgeInsets.all(AppSizes.pH4),
                  child: SvgPicture.asset(AppAssets.check),
                ),
              );
            }),
            SizedBox(
              width: AppSizes.pW16,
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.pW16,
          ),
          child: SingleChildScrollView(
            child: SizedBox(
              height: AppSizes.heightFullScreen - AppSizes.pH114,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    children: [
                      TextField(
                        controller: titleController,
                        style: Theme.of(context).textTheme.bodyLarge,
                        maxLines: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Title',
                          hintStyle: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: bodyController,
                          style: Theme.of(context).textTheme.bodyMedium,
                          maxLines: null,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const ColorWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
