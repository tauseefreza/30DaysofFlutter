import 'package:flutter/material.dart';
import 'package:flutter_app_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) {
    if (_formKey.currentState.validate()) {
      setState(() async {
        changeButton = true;
        await Future.delayed(Duration(seconds: 1));
        await Navigator.pushNamed(context, MyRoutes.homeRoute);
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 44.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter your Username",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter your Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Password cannot be empty";
                          }
                          if (value.length < 6) {
                            return "Password Length should be minimum 6";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        child: Center(
                          child: Text(
                            "Forgot Password?",
                            // textAlign: TextAlign.left,
                          ),
                        ),
                        height: 60.0,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text("Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),

                            // shape: changeButton ?
                            //       BoxShape.circle
                            //     : BoxShape.rectangle,
                          ),
                        ),
                      ),
                      // ElevatedButton(
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      // ),
                      SizedBox(
                        height: 100.0,
                      ),
                      Text(
                        "Don't have an account?  SIGN UP",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
