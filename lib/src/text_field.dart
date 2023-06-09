import 'package:flutter/material.dart';

enum FieldStyle {
  simple,
  comic,
  modern,
  old,
  elevated,
  password,
}

class CustomTextField extends StatefulWidget {
  /// Required Parameter:  Controller for text field
  final TextEditingController controller;

  final String hintText;
  final Color borderColor;
  final Color boxColor;
  final Color textColor;
  final FieldStyle fieldStyle;
  final TextAlign textAlign;
  final double fontSize;
  final double letterSpacing;
  final String fontFamily;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double fieldHeight;
  final double borderRadius;
  final Color shadowColor;
  final Offset offset;
  final double spreadRadius;
  final double blurRadius;
  final bool enableShadow;

  /// An optional maximum number of lines for the text to span, wrapping if necessary.
  /// If the text exceeds the given number of lines, it will be resized according
  /// to the specified bounds and if necessary truncated according to [overflow].
  ///
  /// If this is 1, text will not wrap. Otherwise, text will be wrapped at the
  /// edge of the box.
  final int? maxLines;

  final TextInputType? textInputType;

  ///onTap function to provide extra user end functionalities as otherwise required.
  final void Function()? onTap;
  final void Function(String value)? onChanged;
  const CustomTextField(
      {super.key,
      required this.controller,
      this.hintText = "Placeholder Text",
      this.borderColor = const Color.fromARGB(255, 174, 174, 174),
      this.boxColor = const Color.fromARGB(255, 227, 227, 227),
      this.textColor = Colors.black,
      this.textInputType = TextInputType.text,
      this.onTap,
      this.maxLines = 1,
      this.fieldStyle = FieldStyle.simple,
      this.textAlign = TextAlign.center,
      this.fontSize = 18,
      this.letterSpacing = 1,
      this.fontFamily = '',
      this.prefixIcon,
      this.suffixIcon,
      this.fieldHeight = 50,
      this.borderRadius = 10,
      this.shadowColor = const Color.fromARGB(255, 196, 196, 196),
      this.offset = const Offset(3, 5),
      this.spreadRadius = 2,
      this.blurRadius = 15,
      this.onChanged,
      this.enableShadow = false});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool seePassword = true;
  Icon visibleIcon = const Icon(Icons.visibility);
  Icon visibleOffIcon = const Icon(Icons.visibility_off);
  Widget? renderField(BuildContext context) {
    switch (widget.fieldStyle) {
      case FieldStyle.simple:
        return Container(
          height: widget.fieldHeight,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: TextFormField(
            onTap: widget.onTap,
            controller: widget.controller,
            keyboardType: widget.textInputType,
            maxLines: widget.maxLines,
            textAlign: widget.textAlign,
            style: TextStyle(
                fontSize: widget.fontSize,
                color: widget.textColor,
                fontFamily: widget.fontFamily,
                letterSpacing: widget.letterSpacing),
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              contentPadding: EdgeInsets.zero,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                  fontSize: widget.fontSize,
                  fontFamily: widget.fontFamily,
                  color: widget.textColor.withOpacity(0.5),
                  letterSpacing: 1.1),
              fillColor: widget.boxColor,
            ),
          ),
        );
      case FieldStyle.elevated:
        return Container(
          height: widget.fieldHeight,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              boxShadow: [
                BoxShadow(
                    color: widget.shadowColor,
                    offset: widget.offset,
                    spreadRadius: widget.spreadRadius,
                    blurRadius: widget.blurRadius),
              ]),
          child: TextFormField(
            onTap: widget.onTap,
            controller: widget.controller,
            keyboardType: widget.textInputType,
            maxLines: widget.maxLines,
            textAlign: widget.textAlign,
            style: TextStyle(
                fontSize: widget.fontSize,
                color: widget.textColor,
                fontFamily: widget.fontFamily,
                letterSpacing: widget.letterSpacing),
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              contentPadding: EdgeInsets.zero,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                  fontSize: widget.fontSize,
                  fontFamily: widget.fontFamily,
                  color: widget.textColor.withOpacity(0.5),
                  letterSpacing: 1.1),
              fillColor: widget.boxColor,
            ),
          ),
        );

      ///
      case FieldStyle.comic:
        return Container(
          height: widget.fieldHeight,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              boxShadow: [
                BoxShadow(
                  color: widget.shadowColor,
                  offset: widget.offset,
                ),
              ]),
          child: TextFormField(
            onTap: widget.onTap,
            controller: widget.controller,
            keyboardType: widget.textInputType ?? TextInputType.text,
            maxLines: widget.maxLines ?? 1,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: widget.fontSize,
                color: widget.textColor,
                fontFamily: widget.fontFamily,
                letterSpacing: widget.letterSpacing),
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                  // fontSize: 16.sp,
                  fontFamily: widget.fontFamily,
                  color: widget.textColor.withOpacity(0.5),
                  letterSpacing: 1.1),
              fillColor: widget.boxColor,
            ),
          ),
        );
      case FieldStyle.password:
        return Container(
          height: widget.fieldHeight,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              boxShadow: widget.enableShadow
                  ? [
                      BoxShadow(
                          color: widget.shadowColor,
                          offset: widget.offset,
                          spreadRadius: widget.spreadRadius,
                          blurRadius: widget.blurRadius),
                    ]
                  : null),
          child: TextFormField(
            onChanged: widget.onChanged,
            controller: widget.controller,
            maxLines: widget.maxLines,
            obscureText: seePassword,
            textAlign: widget.textAlign,
            style: TextStyle(
              fontSize: widget.fontSize,
              fontFamily: widget.fontFamily,
            ),
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (seePassword) {
                        seePassword = false;
                      } else {
                        seePassword = true;
                      }
                    });
                  },
                  child: seePassword ? visibleOffIcon : visibleIcon),
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                  // fontSize: 16.sp,
                  fontFamily: widget.fontFamily,
                  color: widget.textColor.withOpacity(0.5),
                  letterSpacing: 1.1),
              fillColor: widget.boxColor,
            ),
          ),
        );

      case FieldStyle.modern:
        return Container(
          height: widget.fieldHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: widget.boxColor,
            border: Border.all(color: Colors.transparent),
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  spreadRadius: 0.0,
                  blurRadius: 10,
                  offset: const Offset(3.0, 3.0)),
              BoxShadow(
                  color: Colors.grey.shade500,
                  spreadRadius: 0.0,
                  blurRadius: 10 / 2.0,
                  offset: const Offset(3.0, 3.0)),
              const BoxShadow(
                  color: Colors.white,
                  spreadRadius: 2.0,
                  blurRadius: 10,
                  offset: Offset(-3.0, -3.0)),
              const BoxShadow(
                  color: Colors.white,
                  spreadRadius: 2.0,
                  blurRadius: 10 / 2,
                  offset: Offset(-3.0, -3.0)),
            ],
          ),
          child: TextFormField(
            onTap: widget.onTap,
            controller: widget.controller,
            keyboardType: widget.textInputType,
            maxLines: widget.maxLines,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: widget.fontSize,
                color: widget.textColor,
                fontFamily: widget.fontFamily,
                letterSpacing: widget.letterSpacing),
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              contentPadding: EdgeInsets.zero,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                  // fontSize: 16.sp,
                  fontFamily: widget.fontFamily,
                  color: widget.textColor.withOpacity(0.5),
                  letterSpacing: 1.1),
              fillColor: Colors.transparent,
            ),
          ),
        );
      case FieldStyle.old:
        return Container(
          height: widget.fieldHeight,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border(
              bottom: BorderSide(
                  width: 2.0,
                  color: widget.borderColor == Colors.transparent
                      ? Colors.black
                      : widget.borderColor),
            ),
          ),
          child: TextFormField(
            onTap: widget.onTap,
            controller: widget.controller,
            keyboardType: widget.textInputType ?? TextInputType.text,
            maxLines: widget.maxLines ?? 1,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: widget.fontSize,
                color: widget.textColor,
                fontFamily: widget.fontFamily,
                letterSpacing: widget.letterSpacing),
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              enabledBorder: OutlineInputBorder(
                // borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.boxColor),
              ),
              focusedBorder: OutlineInputBorder(
                // borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.boxColor),
              ),
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                  // fontSize: 16.sp,
                  fontFamily: widget.fontFamily,
                  color: widget.textColor.withOpacity(0.5),
                  letterSpacing: 1.1),
              fillColor: widget.boxColor,
            ),
          ),
        );

      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: renderField(context),
    );
  }
}
