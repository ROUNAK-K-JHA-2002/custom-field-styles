import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

enum CustomStyle {
  simple,
  comic,
  modern,
  old,
  elevated,
  gradient,
}

class CustomButtons extends StatefulWidget {
  final CustomStyle buttonStyle;
  final double width;
  final EdgeInsetsGeometry padding;

  final Widget child;
  final Color borderColor;
  final Color boxColor;
  final Color firstGradientColor;
  final Color secondGradientColor;
  final double borderRadius;
  final Color shadowColor;
  final Offset offset;
  final double spreadRadius;
  final double blurRadius;
  final double fontSize;
  final double letterSpacing;
  final String fontFamily;
  final bool enableShadow;
  final void Function()? onTap;

  const CustomButtons(
      {super.key,
      this.buttonStyle = CustomStyle.simple,
      this.width = double.maxFinite,
      this.padding = const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      required this.child,
      this.borderColor = Colors.transparent,
      this.boxColor = const Color.fromARGB(255, 238, 236, 236),
      this.borderRadius = 10,
      this.shadowColor = const Color.fromARGB(255, 196, 196, 196),
      this.offset = const Offset(5, 7),
      this.spreadRadius = 2,
      this.blurRadius = 15,
      this.fontSize = 18,
      this.letterSpacing = 1,
      this.fontFamily = '',
      this.enableShadow = true,
      this.onTap,
      this.firstGradientColor = Colors.pink,
      this.secondGradientColor = Colors.purple});

  @override
  State<CustomButtons> createState() => _CustomButtonsState();
}

class _CustomButtonsState extends State<CustomButtons> {
  bool isPressed = false;
  @override
  void dispose() {
    super.dispose();
  }

  Widget renderField(BuildContext context) {
    double blurradius = isPressed ? 7 : 15;
    double distance = isPressed ? 5 : 12;
    switch (widget.buttonStyle) {
      case CustomStyle.simple:
        return GestureDetector(
          onTap: widget.onTap,
          child: Container(
            alignment: Alignment.center,
            width: widget.width,
            padding: widget.padding,
            decoration: BoxDecoration(
              color: widget.boxColor,
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
            child: widget.child,
          ),
        );
      case CustomStyle.old:
        return GestureDetector(
          onTap: widget.onTap,
          child: Container(
            alignment: Alignment.center,
            width: widget.width,
            padding: widget.padding,
            decoration: BoxDecoration(
              color: widget.boxColor,
              border: Border(
                bottom: BorderSide(
                    width: 2.0,
                    color: widget.borderColor == Colors.transparent
                        ? Colors.black
                        : widget.borderColor),
              ),
            ),
            child: widget.child,
          ),
        );
      case CustomStyle.modern:
        return GestureDetector(
            onTap: () async {
              setState(() {
                isPressed = !isPressed;
              });
              await Future.delayed(const Duration(milliseconds: 200));
              setState(() {
                isPressed = !isPressed;
              });
            },
            child: AnimatedContainer(
              alignment: Alignment.center,
              width: widget.width,
              padding: widget.padding,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                border: Border.all(color: Colors.transparent),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(widget.borderRadius),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white,
                      blurRadius: blurradius,
                      offset: Offset(-distance, -distance),
                      inset: isPressed),
                  BoxShadow(
                      color: const Color.fromARGB(255, 185, 187, 192),
                      blurRadius: blurradius,
                      offset: Offset(distance, distance),
                      inset: isPressed),
                ],
              ),
              duration: const Duration(milliseconds: 50),
              child: widget.child,
            ));
      case CustomStyle.comic:
        return GestureDetector(
            onTap: widget.onTap,
            child: Container(
              alignment: Alignment.center,
              width: widget.width,
              padding: widget.padding,
              decoration: BoxDecoration(
                  color: widget.boxColor,
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  boxShadow: [
                    BoxShadow(
                      color: widget.shadowColor,
                      offset: widget.offset,
                    ),
                  ]),
              child: widget.child,
            ));
      case CustomStyle.elevated:
        return GestureDetector(
            onTap: widget.onTap,
            child: Container(
              alignment: Alignment.center,
              width: widget.width,
              padding: widget.padding,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                color: widget.boxColor,
                border: Border.all(color: widget.borderColor),
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: widget.shadowColor,
                    blurRadius: widget.blurRadius,
                    offset: widget.offset,
                  ),
                ],
              ),
              child: widget.child,
            ));
      case CustomStyle.gradient:
        return GestureDetector(
            onTap: widget.onTap,
            child: Container(
              alignment: Alignment.center,
              width: widget.width,
              padding: widget.padding,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  border: Border.all(color: widget.borderColor),
                  boxShadow: widget.enableShadow
                      ? [
                          BoxShadow(
                            color: widget.firstGradientColor.withOpacity(0.5),
                            blurRadius: 12,
                            offset: const Offset(-1, 4),
                          ),
                          BoxShadow(
                            color: widget.secondGradientColor.withOpacity(0.5),
                            blurRadius: 12,
                            offset: const Offset(10, 4),
                          ),
                        ]
                      : [],
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      widget.secondGradientColor,
                      widget.firstGradientColor,
                    ],
                  )),
              child: widget.child,
            ));
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
