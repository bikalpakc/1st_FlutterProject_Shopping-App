import "package:flutter/material.dart";
import "package:flutter_catalogue/utils/Routes.dart";

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Image.asset(
                "assets/images/Login_Image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text("Welcome",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter UserName", labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      child: Text("Login"),
                      style: TextButton.styleFrom(minimumSize: Size(70, 35)),
                      onPressed: () {
                        // print("Login Sucessful");
                        Navigator.pushNamed(context, MyRoutes.HomeRoute);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
