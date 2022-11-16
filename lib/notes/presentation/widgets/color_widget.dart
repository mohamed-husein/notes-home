import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/core/global/theme_color/theme_color_light.dart';

import '../../../core/utils/app_sizes.dart';
import '../../business/cubit/local_db_cubit.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
                    height: 50,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return BlocBuilder<LocalDbCubit, LocalDbState>(
                              builder: (context, state) {
                            LocalDbCubit cubit =
                                BlocProvider.of<LocalDbCubit>(context);
                            return GestureDetector(
                              onTap: () {
                                cubit.setGridColor(ThemeColorLight.gridColors, index);

                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: ThemeColorLight.gridColors[index],
                                    shape: BoxShape.circle),
                              ),
                            );
                          });
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: AppSizes.pW20,
                          );
                        },
                        itemCount: ThemeColorLight.gridColors.length),
                  );
  }
}