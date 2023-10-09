import "package:flutter/material.dart";
import "package:flutter_catalogue/utils/Routes.dart";

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool LoginButtonPress = false;
  String name = "";
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        LoginButtonPress = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomeRoute);
      setState(() {
        LoginButtonPress = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
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
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return ("Username cannot be empty");
                          }
                          return (null);
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return ("Password cannot be empty");
                          } else if (value != null && value.length < 8) {
                            return ("Password must be atleast 8 characters long");
                          }
                          return (null);
                        },
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      Material(
                        color: Colors.brown,
                        borderRadius:
                            BorderRadius.circular(LoginButtonPress ? 50 : 5),
                        child: InkWell(
                          onTap: () => moveToHome(context),
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
                            // decoration: BoxDecoration(
                            //   color: Colors.brown,
                            //   // shape: LoginButtonPress
                            //   //     ? BoxShape.circle
                            //   //     : BoxShape.rectangle,
                            //   borderRadius:
                            //       BorderRadius.circular(LoginButtonPress ? 50 : 5),
                            // ), Comment: We will not be able to use ripple effects on material ancestor if we use docation in this segment. Instead, we use decoration properties in ancestor of this child i.e.Material(above)
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
          ),
        ));
  }
}
