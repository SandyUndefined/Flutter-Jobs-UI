import 'package:flutter/material.dart';
import 'package:jobs_ui/screens/account.dart';
import 'package:jobs_ui/screens/login.dart';

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
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
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
            ElevatedButton(onPressed: () {}, child: const Text("Hindi")),
          ],
        ),
      ),
    );
  }
}
