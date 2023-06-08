import 'package:flutter/material.dart';

enum FieldStyle {
  simple,
  retro,
  modern,
  old,
  roundedStyle,
  squareStyle,
  custom
}

class CustomTextField extends StatefulWidget {
  /// Required Parameter:  Controller for text field
  final TextEditingController controller;

  final String? hintText;
  final Color? borderColor;
  final Color? boxColor;
  final Color? textColor;
  final FieldStyle fieldStyle;

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
  const CustomTextField(
      {super.key,
      required this.controller,
      this.hintText,
      this.borderColor,
      this.boxColor,
      this.textColor,
      this.textInputType,
      this.onTap,
      this.maxLines,
      this.fieldStyle = FieldStyle.simple});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  Widget? renderField(BuildContext context) {
    switch (widget.fieldStyle) {
      case FieldStyle.simple:
        return Container(
          color: Colors.amber,
          child: TextFormField(
            onTap: widget.onTap,
            controller: widget.controller,
            keyboardType: widget.textInputType ?? TextInputType.text,
            maxLines: widget.maxLines ?? 1,
            textAlign: TextAlign.center,
            style: TextStyle(
                // fontSize: 17.sp,
                color: widget.textColor,
                fontFamily: 'Montserrat',
                letterSpacing: 1.1),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                // borderSide: BorderSide(color: widget.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                // borderSide: BorderSide(color: widget.borderColor),
              ),
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                  // fontSize: 16.sp,
                  fontFamily: 'Montserrat',
                  color: widget.textColor,
                  letterSpacing: 1.1),
              fillColor: widget.boxColor,
            ),
          ),
        );
      case FieldStyle.retro:
        return Container(
          color: Colors.pink,
          child: TextFormField(
            onTap: widget.onTap,
            controller: widget.controller,
            keyboardType: widget.textInputType ?? TextInputType.text,
            maxLines: widget.maxLines ?? 1,
            textAlign: TextAlign.center,
            style: TextStyle(
                // fontSize: 17.sp,
                color: widget.textColor,
                fontFamily: 'Montserrat',
                letterSpacing: 1.1),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                // borderSide: BorderSide(color: widget.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                // borderSide: BorderSide(color: widget.borderColor),
              ),
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                  // fontSize: 16.sp,
                  fontFamily: 'Montserrat',
                  color: widget.textColor,
                  letterSpacing: 1.1),
              fillColor: widget.boxColor,
            ),
          ),
        );
      case FieldStyle.modern:
        return Container(
          color: Colors.blue,
          child: TextFormField(
            onTap: widget.onTap,
            controller: widget.controller,
            keyboardType: widget.textInputType ?? TextInputType.text,
            maxLines: widget.maxLines ?? 1,
            textAlign: TextAlign.center,
            style: TextStyle(
                // fontSize: 17.sp,
                color: widget.textColor,
                fontFamily: 'Montserrat',
                letterSpacing: 1.1),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                // borderSide: BorderSide(color: widget.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                // borderSide: BorderSide(color: widget.borderColor),
              ),
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                  // fontSize: 16.sp,
                  fontFamily: 'Montserrat',
                  color: widget.textColor,
                  letterSpacing: 1.1),
              fillColor: widget.boxColor,
            ),
          ),
        );
      case FieldStyle.old:
        return Container(
          color: Colors.green,
          child: TextFormField(
            onTap: widget.onTap,
            controller: widget.controller,
            keyboardType: widget.textInputType ?? TextInputType.text,
            maxLines: widget.maxLines ?? 1,
            textAlign: TextAlign.center,
            style: TextStyle(
                // fontSize: 17.sp,
                color: widget.textColor,
                fontFamily: 'Montserrat',
                letterSpacing: 1.1),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                // borderSide: BorderSide(color: widget.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                // borderSide: BorderSide(color: widget.borderColor),
              ),
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                  // fontSize: 16.sp,
                  fontFamily: 'Montserrat',
                  color: widget.textColor,
                  letterSpacing: 1.1),
              fillColor: widget.boxColor,
            ),
          ),
        );
      case FieldStyle.roundedStyle:
        return Container(
          color: Colors.black,
          child: TextFormField(
            onTap: widget.onTap,
            controller: widget.controller,
            keyboardType: widget.textInputType ?? TextInputType.text,
            maxLines: widget.maxLines ?? 1,
            textAlign: TextAlign.center,
            style: TextStyle(
                // fontSize: 17.sp,
                color: widget.textColor,
                fontFamily: 'Montserrat',
                letterSpacing: 1.1),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                // borderSide: BorderSide(color: widget.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                // borderSide: BorderSide(color: widget.borderColor),
              ),
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                  // fontSize: 16.sp,
                  fontFamily: 'Montserrat',
                  color: widget.textColor,
                  letterSpacing: 1.1),
              fillColor: widget.boxColor,
            ),
          ),
        );
      case FieldStyle.squareStyle:
        return Container(
          color: Colors.red,
          child: TextFormField(
            onTap: widget.onTap,
            controller: widget.controller,
            keyboardType: widget.textInputType ?? TextInputType.text,
            maxLines: widget.maxLines ?? 1,
            textAlign: TextAlign.center,
            style: TextStyle(
                // fontSize: 17.sp,
                color: widget.textColor,
                fontFamily: 'Montserrat',
                letterSpacing: 1.1),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                // borderSide: BorderSide(color: widget.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                // borderSide: BorderSide(color: widget.borderColor),
              ),
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                  // fontSize: 16.sp,
                  fontFamily: 'Montserrat',
                  color: widget.textColor,
                  letterSpacing: 1.1),
              fillColor: widget.boxColor,
            ),
          ),
        );
      case FieldStyle.custom:
        return Container(
          color: Colors.orange,
          child: TextFormField(
            onTap: widget.onTap,
            controller: widget.controller,
            keyboardType: widget.textInputType ?? TextInputType.text,
            maxLines: widget.maxLines ?? 1,
            textAlign: TextAlign.center,
            style: TextStyle(
                // fontSize: 17.sp,
                color: widget.textColor,
                fontFamily: 'Montserrat',
                letterSpacing: 1.1),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                // borderSide: BorderSide(color: widget.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                // borderSide: BorderSide(color: widget.borderColor),
              ),
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                  // fontSize: 16.sp,
                  fontFamily: 'Montserrat',
                  color: widget.textColor,
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
