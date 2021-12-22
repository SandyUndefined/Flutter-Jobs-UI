import 'package:flutter/material.dart';
import 'package:jobs_ui/utlis/colors.dart';
import 'package:jobs_ui/utlis/constants.dart';
import 'package:jobs_ui/widgets/password_field.dart';
import 'package:jobs_ui/widgets/text_button.dart';
import 'package:jobs_ui/widgets/text_field.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool passwordVisibility = true;
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    var blockSizeHorizontal = (screenwidth / 100);
    var blockSizeVertical = (screenheight / 100);
    return Scaffold(
      appBar: AppBar(
        titleSpacing: blockSizeHorizontal * 40,
        backgroundColor: colorBackground,
        title: const Text(
          "Register",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            color: colorPrimaryText,
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: colorBackground,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const MyTextField(
                            hintText: 'Name',
                            inputType: TextInputType.name,
                          ),
                          const MyTextField(
                            hintText: 'Email',
                            inputType: TextInputType.emailAddress,
                          ),
                          const MyTextField(
                            hintText: 'Phone',
                            inputType: TextInputType.phone,
                          ),
                          PasswordField(
                            isPasswordVisible: passwordVisibility,
                            onTap: () {
                              setState(() {
                                passwordVisibility = !passwordVisibility;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account? ",
                          style: kBodyText,
                        ),
                        Text(
                          "Sign In",
                          style: kBodyText.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyTextButton(
                      buttonName: 'Register',
                      onTap: () {},
                      bgColor: Colors.white,
                      textColor: Colors.black87,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
