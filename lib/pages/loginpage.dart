import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  //const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            'assets/images/1.jpg',
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Login",
              // ignore: unnecessary_const
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // ignore: avoid_print
                    print("Hello friend");
                  },
                  child: const Text("Login"),
                )
              ],
            ),
          )
        ],
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
