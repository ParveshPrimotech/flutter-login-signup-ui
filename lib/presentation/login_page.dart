import 'package:flutter/material.dart';

import 'sign_up.dart';
import '../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'assets/images/close.png',
                         height: 14.0,
                      width: 14.0,
                    )),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 70.0, 0, 0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Username',
                      labelText: 'Username',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 24.0, 0, 0),
                  child: TextFormField(
                      decoration: const InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                  )),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.fromLTRB(0, 5.0, 0, 0),
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 60.0, 0, 0),
                    child: const CustomButton(title: "Sign In")),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
                  child: const Center(
                      child: Text(
                    "OR",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w700),
                  )),
                ),
              Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 60.0, 0, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset(
                                      'assets/images/facebook.png',
                                      height: 60.0,
                                      width: 60.0,
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Image.asset(
                                      'assets/images/google.png',
                                      height: 60.0,
                                      width: 60.0,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Not a member?",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700)),
                          InkWell(
                            onTap: () {},
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SecondRoute()));
                              },
                              child: const Text("Sign up now",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700)),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
