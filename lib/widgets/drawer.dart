import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  final accpicURL =
      "https://scontent.fpkr1-1.fna.fbcdn.net/v/t39.30808-6/384235450_2412344025614370_239167882107715335_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=RvMFHhY9HDIAX9we-rA&_nc_ht=scontent.fpkr1-1.fna&oh=00_AfDtUUE3KUcxEmx9VnESAmXpJzyJNQFOZmzV41OfM9i5vQ&oe=6529977C";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // color: Colors.brown,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Bikalpa KC"),
                  accountEmail: Text("bikalpa061@gmail.com"),
                  // currentAccountPicture: Image.network(accpicURL),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(accpicURL),
                  ),
                )),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              iconColor: Colors.black,
              title: Text(
                "Home",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              iconColor: Colors.black,
              title: Text(
                "Profile",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail),
              iconColor: Colors.black,
              title: Text(
                "Email",
                textScaleFactor: 1.4,
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
