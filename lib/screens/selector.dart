import 'package:flutter/material.dart';
import 'package:jobs_ui/screens/agent.dart';
import 'package:jobs_ui/screens/employee.dart';
import 'package:jobs_ui/screens/employer.dart';
import 'package:jobs_ui/utlis/colors.dart';

class Select extends StatefulWidget {
  const Select({Key? key}) : super(key: key);

  @override
  _SelectState createState() => _SelectState();
}

class _SelectState extends State<Select> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    var blockSizeHorizontal = (screenwidth / 100);
    var blockSizeVertical = (screenheight / 100);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(top: screenheight * .1),
        child: Column(
          children: [
            Image.asset("assets/images/selector.png"),
            SizedBox(
              height: screenheight * .04,
            ),
            // Employer
            SizedBox(
              width: screenwidth * .3,
              height: screenheight * .13,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Employee();
                      },
                    ),
                  );
                },
                child: Card(
                  elevation: 4.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: screenheight * .02),
                        child: Image.asset(
                          "assets/images/agent.png",
                          height: screenheight * .06,
                          width: screenheight * .06,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: screenheight * .01),
                        child: const Text(
                          "Agent",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenheight * .02,
            ),
            // Agent
            SizedBox(
              width: screenwidth * .3,
              height: screenheight * .13,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Employee();
                      },
                    ),
                  );
                },
                child: Card(
                  elevation: 4.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: screenheight * .02),
                        child: Image.asset(
                          "assets/images/worker.png",
                          height: screenheight * .06,
                          width: screenheight * .06,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: screenheight * .01),
                        child: const Text(
                          "Employer",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenheight * .02,
            ),
            // Employee
            SizedBox(
              width: screenwidth * .3,
              height: screenheight * .13,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Employee();
                      },
                    ),
                  );
                },
                child: Card(
                  elevation: 4.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: screenheight * .02),
                        child: Image.asset(
                          "assets/images/company.png",
                          height: screenheight * .06,
                          width: screenheight * .06,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: screenheight * .01),
                        child: const Text(
                          "Employee",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
