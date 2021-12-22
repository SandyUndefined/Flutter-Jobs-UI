import 'package:flutter/material.dart';
import 'package:jobs_ui/utlis/constants.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,
    this.buttonName,
    this.onTap,
    this.bgColor,
    this.textColor,
  }) : super(key: key);

  final String? buttonName;
  final VoidCallback? onTap;
  final Color? bgColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Colors.black12,
          ),
        ),
        onPressed: onTap,
        child: Text(
          buttonName!,
          style: kButtonText.copyWith(color: textColor),
        ),
      ),
    );
  }
}
