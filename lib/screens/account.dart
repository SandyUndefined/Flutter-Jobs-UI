import 'package:flutter/material.dart';
import 'package:jobs_ui/screens/login.dart';
import 'package:jobs_ui/screens/registration.dart';
import 'package:jobs_ui/utlis/colors.dart';
import 'package:jobs_ui/widgets/button.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    var blockSizeHorizontal = (screenwidth / 100);
    var blockSizeVertical = (screenheight / 100);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colorBackground,
      body: Center(
        child: Container(
          padding:
              EdgeInsets.only(left: screenwidth / 8, right: screenwidth / 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/launch.png"),
              SizedBox(height: screenheight * .02),
              const Text(
                "A Bufe of Work",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 28,
                    color: colorPrimaryText,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: screenheight * .09),
              SizedBox(
                height: screenheight * .06,
                width: screenwidth * .5,
                child: ButtonWidget(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const Register();
                        },
                      ),
                    );
                  },
                  child: const Text("Register"),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlueAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenheight * .04),
              SizedBox(
                height: screenheight * .06,
                width: screenwidth * .5,
                child: ButtonWidget(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const Login();
                        },
                      ),
                    );
                  },
                  child: const Text("Login"),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.lightBlueAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
