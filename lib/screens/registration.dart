import 'package:flutter/material.dart';
import 'package:jobs_ui/utlis/colors.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    var blockSizeHorizontal = (screenwidth / 100);
    var blockSizeVertical = (screenheight / 100);
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: colorBackground,
        title: Center(
          child: Text(
            "Registration",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              color: colorPrimaryText,
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: colorBackground,
      body: Container(),
    );
  }
}
