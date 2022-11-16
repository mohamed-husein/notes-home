import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/notes/presentation/screens/add_note.dart';
import 'package:notes_app/notes/presentation/screens/edit_nodes.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import '../../../core/utils/app_constants.dart';
import '../../../core/utils/app_sizes.dart';
import '../../../core/widgets/custom_text.dart';
import '../../business/cubit/local_db_cubit.dart';
import '../../data/helper/database_helper.dart';
import '../../data/repository/database_repository.dart';

class Note {
  final String title;
  final String body;

  Note({required this.title, required this.body});
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalDbCubit(
          repository: DatabaseRepository(databaseHelper: DatabaseHelper()))
        ..getNotes(),
      child: Scaffold(
        appBar: AppBar(
          title: CustomText.labelLarge(
            AppConstants.contacts,
            context: context,
          ),
        ),
        body: SizedBox(
          height: AppSizes.heightFullScreen,
          child: BlocBuilder<LocalDbCubit, LocalDbState>(
              builder: (context, state) {
            LocalDbCubit cubit = BlocProvider.of<LocalDbCubit>(context);

            return StaggeredGridView.countBuilder(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.pW16, vertical: AppSizes.pH20),
              itemCount: cubit.maps.length,
              staggeredTileBuilder: (index) => const StaggeredTile.fit(2),
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return EditNotesScreen(
                        body: cubit.maps[index].body,
                        title: cubit.maps[index].title,
                        id: cubit.maps[index].id!,
                      );
                    },
                  )),
                  child: Dismissible(
                    key: UniqueKey(),
                    onDismissed: (direction) {
                      cubit.delete(cubit.maps[index].id!);
                    },
                    child: Container(
                      width: AppSizes.widthFullScreen,
                      decoration: BoxDecoration(
                        color: Color(int.parse(cubit.maps[index].color)),
                        borderRadius: BorderRadius.circular(AppSizes.br10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppSizes.pW4, vertical: AppSizes.pH8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText.displayMedium(cubit.maps[index].title,
                                context: context),
                            CustomText.displaySmall(
                              cubit.maps[index].body,
                              context: context,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddNoteScreen(),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
