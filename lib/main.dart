import 'package:flutter/material.dart';
import 'package:flutter_first/Signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    alignment: Alignment.centerRight,
                    child: const IconButton(
                      onPressed: null,
                      icon: Icon(Icons.close),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 70.0, 0, 0),
                    child: TextFormField(
                        decoration: const InputDecoration(
                      hintText: 'Username',
                      labelText: 'Username',
                    )),
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
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 60.0, 0, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 10.0, 0),
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
                                  margin:
                                      const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
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
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Not a member?",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700)),
                            Text("Sign up now",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _navigateToNextScreen(context, const SecondRoute());
      },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Ink(
        decoration: BoxDecoration(
            gradient:
                const LinearGradient(colors: [Colors.red, Colors.deepOrange]),
            borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: 200,
          height: 40,
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(fontSize: 16.0, fontStyle: FontStyle.normal),
          ),
        ),
      ),
    );
  }
}

void _navigateToNextScreen(BuildContext context, StatelessWidget secondRoute) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => secondRoute));
}