import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:spring_board/helpers/constants.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "ZOVO",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      "FIND YOUR DREAM JOB HERE",
                      style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: const Color(0xFF232323),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(15.0)),
                    onPressed: () {},
                    child: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.only(left: 14, right: 14.0),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Login",
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: const Color(0XFFE2D3FE),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Register",
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Image.asset(
              "images/landing.jpg",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
