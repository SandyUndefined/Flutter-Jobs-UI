import 'package:flutter/material.dart';
import 'package:jobs_ui/utlis/colors.dart';

class ButtonWidget extends StatefulWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool? autofocus;
  final Clip? clipBehavior;
  final Widget? child;
  const ButtonWidget(
      {Key? key,
      required this.onPressed,
      this.onLongPress,
      this.style,
      this.focusNode,
      this.autofocus,
      this.clipBehavior,
      required this.child})
      : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    var blockSizeHorizontal = (screenwidth / 100);
    var blockSizeVertical = (screenheight / 100);
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: widget.child,
      style: widget.style ??
          ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 30),
            primary: colorButton,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700),
          ),
    );
  }
}
