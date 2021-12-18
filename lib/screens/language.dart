import 'package:flutter/material.dart';
import 'package:jobs_ui/screens/account.dart';
import 'package:jobs_ui/screens/login.dart';
import 'package:jobs_ui/utlis/colors.dart';
import 'package:jobs_ui/widgets/button.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
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
              SizedBox(
                height: screenheight * .06,
                width: screenwidth * .5,
                child: ButtonWidget(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.purple),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const Account();
                          },
                        ),
                      );
                    },
                    child: const Text("English")),
              ),
              SizedBox(height: screenheight * .04),
              SizedBox(
                height: screenheight * .06,
                width: screenwidth * .5,
                child: ButtonWidget(
                  onPressed: () {},
                  child: const Text("Hindi"),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
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
