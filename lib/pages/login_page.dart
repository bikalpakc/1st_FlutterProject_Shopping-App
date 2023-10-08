import "package:flutter/material.dart";
import "package:flutter_catalogue/utils/Routes.dart";

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool LoginButtonPress = false;
  String name = "";
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
              Text("Welcome $name",
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
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          LoginButtonPress = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.HomeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: LoginButtonPress ? 50 : 70,
                        height: LoginButtonPress ? 50 : 35,
                        // color: Colors.brown,
                        alignment: Alignment.center,
                        child: LoginButtonPress
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text("Login",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                )),
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          // shape: LoginButtonPress
                          //     ? BoxShape.circle
                          //     : BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.circular(LoginButtonPress ? 50 : 5),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(70, 35)),
                    //   onPressed: () {
                    //     // print("Login Sucessful");
                    //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    //   },
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
