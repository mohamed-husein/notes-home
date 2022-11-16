import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    this.text, {
    Key? key,
    required this.textStyle,
    this.textAlign,
    this.textDirection,
    this.overflow,
    this.maxLines,
    required this.context,
  }) : super(key: key);

  /// Display Small
  CustomText.displaySmall(String text,
      {Key? key,
      TextAlign? textAlign,
      String? fontFamily,
      int? maxLines,
      TextStyle? textStyle,
      TextOverflow? overflow,
      required BuildContext context})
      : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          context: context,
          textStyle: textStyle ?? Theme.of(context).textTheme.displaySmall,
        );

  /// Display Medium
  CustomText.displayMedium(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext context,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          context: context,
          textStyle: textStyle ?? Theme.of(context).textTheme.displayMedium,
        );

  /// Display Large
  CustomText.displayLarge(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext context,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          context: context,
          overflow: overflow,
          textStyle: textStyle ?? Theme.of(context).textTheme.displayLarge,
        );

  /// Display Large Bold
  CustomText.displayLargeBold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext context,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          context: context,
          textStyle: textStyle ?? Theme.of(context).textTheme.headlineLarge,
        );

  /// Display Medium Bold
  CustomText.displayMediumBold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext context,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          context: context,
          textStyle: textStyle ?? Theme.of(context).textTheme.headlineMedium,
        );

  /// Display  Small Bold
  CustomText.displaySmallBold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext context,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          context: context,
          overflow: overflow,
          textStyle: textStyle ?? Theme.of(context).textTheme.headlineSmall,
        );

  ///Body Small
  CustomText.bodySmall(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    required BuildContext context,
    TextOverflow? overflow,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          context: context,
          textStyle: textStyle ?? Theme.of(context).textTheme.bodySmall,
        );

  ///Body Medium
  CustomText.bodyMedium(
    String text, {
    Key? key,
    TextAlign? textAlign,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext context,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          context: context,
          textStyle: textStyle ?? Theme.of(context).textTheme.bodyMedium,
        );

  ///Body Large
  CustomText.bodyLarge(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext context,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          context: context,
          overflow: overflow,
          textStyle: textStyle ?? Theme.of(context).textTheme.bodyLarge,
        );

  CustomText.titleSmall(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext context,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          context: context,
          overflow: overflow,
          textStyle: textStyle ?? Theme.of(context).textTheme.titleSmall,
        );

  /// black in light -- white in dark
  CustomText.titleMedium(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext context,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          context: context,
          textStyle: textStyle ?? Theme.of(context).textTheme.titleMedium,
        );

  CustomText.titleLarge(
    String text, {
    Key? key,
    TextAlign? textAlign,
    String? fontFamily,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext context,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          context: context,
          textStyle: textStyle ?? Theme.of(context).textTheme.titleLarge,
        );

  CustomText.body2XSmall(
    String text, {
    Key? key,
    TextAlign? textAlign,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
    required BuildContext context,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          context: context,
          textStyle: textStyle ?? Theme.of(context).textTheme.labelSmall,
        );

  /// Body 2 Large
  CustomText.body2Large(
    String text, {
    Key? key,
    TextAlign? textAlign,
    int? maxLines,
    TextStyle? textStyle,
    required BuildContext context,
    TextOverflow? overflow,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          context: context,
          textStyle: textStyle ?? Theme.of(context).textTheme.titleLarge,
        );

  /// Body 2 Medium
  CustomText.body2Medium(
    String text, {
    Key? key,
    required BuildContext context,
    TextAlign? textAlign,
    int? maxLines,
    TextStyle? textStyle,
    TextOverflow? overflow,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          context: context,
          textStyle: textStyle ?? Theme.of(context).textTheme.titleMedium,
        );

  /// Label
  CustomText.labelSmall(
    String text, {
    Key? key,
    TextAlign? textAlign,
    int? maxLines,
    required BuildContext context,
    TextStyle? textStyle,
    TextOverflow? overflow,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          context: context,
          textStyle: textStyle ?? Theme.of(context).textTheme.labelSmall,
        );

  CustomText.labelMedium(
    String text, {
    Key? key,
    TextAlign? textAlign,
    int? maxLines,
    TextStyle? textStyle,
    required BuildContext context,
    TextOverflow? overflow,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          context: context,
          textStyle: textStyle ?? Theme.of(context).textTheme.labelMedium,
        );

  CustomText.labelLarge(
    String text, {
    Key? key,
    TextAlign? textAlign,
    int? maxLines,
    TextStyle? textStyle,
    required BuildContext context,
    TextOverflow? overflow,
  }) : this(
          text,
          key: key,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: overflow,
          context: context,
          textStyle: textStyle ?? Theme.of(context).textTheme.labelLarge,
        );

  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextOverflow? overflow;
  final int? maxLines;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle ?? Theme.of(context).textTheme.displayMedium,
      textAlign: textAlign ?? TextAlign.center,
      textDirection: textDirection,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
