import 'package:credpal_assessment/config/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  const TextView({
    required this.text,
    super.key,
    this.textOverflow = TextOverflow.clip,
    this.textAlign = TextAlign.left,
    this.onTap,
    this.textStyle,
    this.color,
    this.bgColor,
    this.fontSize,
    this.fontFamily,
    this.fontWeight,
    this.decoration,
  });

  final String text;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;
  final VoidCallback? onTap;
  final double? fontSize;
  final TextStyle? textStyle;
  final Color? color;
  final Color? bgColor;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        key: key,
        style:TextStyle(
              fontSize: fontSize != null ? fontSize! : 14,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: color ?? AppColors.kBlack,
              decoration: decoration,
              decorationColor: color,
              backgroundColor: bgColor,
          fontFamily:'Avenir'
            ),
        textAlign: textAlign,
        overflow: textOverflow,
      ),

    );
  }
}
