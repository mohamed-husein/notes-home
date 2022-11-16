import 'package:flutter/material.dart';

import '../../utils/app_sizes.dart';

class CustomAvatarImage extends StatelessWidget {
  const CustomAvatarImage(
    this.url, {
    Key? key,
    this.radius,
  }) : super(key: key);
  final double? radius;
  final String url;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius ?? AppSizes.br25,
      backgroundImage: NetworkImage(
        url,
      ),
    );
  }
}
