import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spring_board/helpers/constants.dart';
import 'package:spring_board/helpers/reuseable_card.dart';
import 'package:spring_board/helpers/circular_box.dart';
// import 'package:spring_board/helpers/drawer.dart';

class DetailPage extends StatelessWidget {
  static String page = 'profile-page';
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const NavDrawer(),
      appBar: AppBar(
        backgroundColor: kBackground,
        elevation: 0,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.black,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Icon(
              FontAwesomeIcons.bookmark,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ReusableCard(
                    backgroundColor: const Color(0XFFF3F4F4),
                    cardDetails: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "UI/UX DESIGNER",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text("Google"),
                            Container(
                              height: 10.0,
                              width: 10.0,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.grey),
                            ),
                            const Text("California"),
                            Container(
                              height: 10.0,
                              width: 10.0,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.grey),
                            ),
                            const Text("1 day ago")
                          ],
                        )
                      ],
                    ),
                  ),
                  const Positioned(
                    left: 125.0,
                    top: -50.0,
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundColor: kPartTime,
                      child: Icon(
                        FontAwesomeIcons.google,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      CircularBox(
                        icons: Icon(
                          CupertinoIcons.money_dollar_circle,
                          color: Colors.black,
                        ),
                        color: Color(0XFFEAD2A1),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("Salary"),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(r"$40-64K")
                    ],
                  ),
                  Column(
                    children: const [
                      CircularBox(
                          icons: Icon(
                            CupertinoIcons.alarm,
                            color: Colors.black,
                          ),
                          color: kFullTime),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("Job Type"),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(r"Part time")
                    ],
                  ),
                  Column(
                    children: const [
                      CircularBox(
                          icons: Icon(
                            FontAwesomeIcons.chair,
                            color: Colors.black,
                          ),
                          color: kRemoteJob),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("Position"),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(r"Junior")
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Description",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10.0,
                        width: 10.0,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      const Expanded(
                        child: Text(
                          "Knowledge of online technology and related products,including web and mobile UI and related tools",
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Material(
              borderRadius: BorderRadius.circular(15),
              color: kDarkColor,
              child: MaterialButton(
                onPressed: () {},
                child: const Text(
                  "Apply now",
                  style: TextStyle(color: kButtonText),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
