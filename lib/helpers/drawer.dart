import 'package:flutter/material.dart';
// import 'package:spring_board/navigation_pages/profile.dart';
import 'package:spring_board/screens/detail_page.dart';

class NavDrawer extends StatelessWidget {
  static const padding = EdgeInsets.only(left: 10, right: 10.0);
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blue,
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20.0),
            menuItem(
              text: 'Profile',
              icon: Icons.people,
              onClicked: () => selectedPage(context: context, index: 0),
            ),
            menuItem(
              text: "search anything",
              icon: Icons.search,
              onClicked: () => selectedPage(context: context, index: 1),
            ),
            menuItem(
              text: "Favourites",
              icon: Icons.favorite,
              onClicked: () => selectedPage(context: context, index: 2),
            ),
            menuItem(
              text: "Update",
              icon: Icons.update,
              onClicked: () => selectedPage(context: context, index: 3),
            ),
            const Divider(
              color: Colors.white,
            ),
            const SizedBox(height: 20.0),
            menuItem(
              text: "Notifications",
              icon: Icons.notifications_outlined,
              onClicked: () => selectedPage(context: context, index: 4),
            )
          ],
        ),
      ),
    );
  }

  Widget menuItem(
      {required String text, required IconData icon, VoidCallback? onClicked}) {
    const color = Colors.white;
    const hoverColor = Colors.grey;
    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: const TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedPage({required BuildContext context, required int index}) {
    Navigator.pop(context);
    switch (index) {
      case 0:
        Navigator.pushNamed(context, DetailPage.page);
        break;
    }
  }
}
