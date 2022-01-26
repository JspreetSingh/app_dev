import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //const LoginPage({Key? key}) : super(key: key);
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  get child => null;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                'assets/images/1.jpg',
                fit: BoxFit.cover,
                //height: 600,
              ),
              const SizedBox(
                height: 20,
              ),
              Text("Login $name",
                  // ignore: unnecessary_const
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
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
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be atleast 6";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                        color: Colors.cyan,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 100 : 150,
                            height: 50,
                            //color: Colors.cyan,
                            alignment: Alignment.center,
                            // ignore: prefer_const_constructors
                            child: changeButton
                                ? Icon(Icons.done)
                                : Text("Login",
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    )),
                            // decoration: BoxDecoration(
                            //   color: Colors.cyan,
                            //   // shape:
                            //   //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                            //   borderRadius:
                            //       BorderRadius.circular(changeButton ? 50 : 8),
                            // ),
                          ),
                        ))
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: const Text("Login"),
                    //   style:
                    //       TextButton.styleFrom(minimumSize: const Size(100, 40)),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // child: Center(
      //   child: Text(
      //     "Login Page",
      //     style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.deepOrange,
      //       backgroundColor: Colors.black,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
    );
  }
}
