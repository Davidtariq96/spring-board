import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../helpers/drawer.dart';
import 'package:spring_board/helpers/reuseable_card.dart';
import 'package:spring_board/helpers/constants.dart';

class JobPage extends StatelessWidget {
  static String id = '/jobPage';
  const JobPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF8F8F8),
      appBar: AppBar(
        // backgroundColor: const Color(0XFFF8F8F8),
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 10),
            child: Row(
              children: [
                // TextField(
                //   style: TextStyle(color: Colors.black),
                //
                // ),
                TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.grey,
                      backgroundColor: Colors.white,
                      shape: const CircleBorder()),
                  onPressed: () {},
                  child: const Icon(Icons.search),
                ),
                const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("images/profile.jpeg"),
                )
              ],
            ),
          )
        ],
      ),
      drawer: const NavDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hello",
                      style: kTextStyle,
                    ),
                    Text(
                      "David K.",
                      style: kTextStyle2,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(
                  backgroundColor: const Color(0XFFF5DFB9),
                  cardDetails: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "50% off",
                              style: TextStyle(
                                  color: Color(0xFF222222), fontSize: 20.0),
                            ),
                            const Text(
                              "take any courses",
                              style:
                                  TextStyle(color: kTextColor, fontSize: 17.0),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(25),
                              color: kDarkColor,
                              child: MaterialButton(
                                minWidth: 120,
                                onPressed: () {},
                                child: const Text(
                                  "Join now",
                                  style: TextStyle(color: kButtonText),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Image.asset("images/model.jpg"))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                child: const Text(
                  "Find your job",
                  style: TextStyle(
                      color: Color(0XFF272727),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ReusableCard(
                        backgroundColor: kRemoteJob,
                        cardDetails: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(
                                FontAwesomeIcons.home,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text("44.8k"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Remote jobs",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: ReusableCard(
                              backgroundColor: kFullTime,
                              cardDetails: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        FontAwesomeIcons.warehouse,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text("66.8k"),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text("Full time")
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Expanded(
                            child: ReusableCard(
                              backgroundColor: kPartTime,
                              cardDetails: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        FontAwesomeIcons.heart,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text("38.9K"),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text("Part time")
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Recent Job List",
                      style: TextStyle(
                          color: kDarkColor,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      child: const Text("See all"),
                      onTap: () {},
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    ReusableCard(
                      elevation: 2,
                      backgroundColor: Colors.white,
                      cardDetails: Container(
                        margin: const EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const CircleAvatar(
                                  backgroundColor: kFullTime,
                                  child: Icon(
                                    FontAwesomeIcons.apple,
                                    color: Colors.black,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Product Designer",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    Text(r"$10K - $12K/month")
                                  ],
                                ),
                                const Icon(FontAwesomeIcons.bookmark)
                              ],
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Expanded(
                                  child: RoundedButton(
                                    text: 'Senior Designer',
                                    color: kBackground,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Expanded(
                                  child: RoundedButton(
                                      text: "Full time", color: kBackground),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Expanded(
                                  child: RoundedButton(
                                    text: "Apply",
                                    color: Color(0XFFF5DFB9),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ReusableCard(
                      elevation: 2,
                      backgroundColor: Colors.teal,
                      cardDetails: Container(
                        margin: const EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const CircleAvatar(
                                  backgroundColor: kFullTime,
                                  child: Icon(
                                    FontAwesomeIcons.apple,
                                    color: Colors.black,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Product Designer",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    Text(r"$10K - $12K/month")
                                  ],
                                ),
                                const Icon(FontAwesomeIcons.bookmark)
                              ],
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Expanded(
                                  child: RoundedButton(
                                    text: 'Senior Designer',
                                    color: kBackground,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Expanded(
                                  child: RoundedButton(
                                      text: "Full time", color: kBackground),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Expanded(
                                  child: RoundedButton(
                                    text: "Apply",
                                    color: Color(0XFFF5DFB9),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        borderRadius: BorderRadius.circular(20),
        color: color,
        child: MaterialButton(
          minWidth: 120,
          height: 20.0,
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ));
  }
}
