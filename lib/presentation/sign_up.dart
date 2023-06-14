import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 40.0, 0, 0),
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/close.png',
                      height: 14.0,
                      width: 14.0,
                    ),
                  )),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Log In",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 16.0, 0, 0),
                child: const Text(
                  "Log In Log In Log In Log In Log In Log In Log In Log In Log In",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 24.0, 0, 0),
                child: TextFormField(
                    decoration: const InputDecoration(
                  hintText: 'Mobile Number',
                  labelText: 'Mobile Number',
                )),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
                  child: const customButton(
                      title: "SEND OTP", buttonType: "OTPBUTTON")),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 3.0, 0, 0),
                  child: const customButton(
                      title: "LOGIN USING PASSWORD",
                      buttonType: "LOGINWITHPASSBUTTON")),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("New User? Register Here",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700)),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 30.0, 0, 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Or Continue with",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700)),
                          Container(
                            margin: const EdgeInsets.fromLTRB(14.0, 0, 0, 0),
                            child: Image.asset(
                              'assets/images/facebook.png',
                              height: 24.0,
                              width: 24.0,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(14.0, 0, 0, 0),
                            child: Image.asset(
                              'assets/images/google.png',
                              height: 24.0,
                              width: 24.0,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class customButton extends StatelessWidget {
  const customButton(
      {super.key, required this.title, required this.buttonType});

  final String title;
  final String buttonType;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Ink(
        child: inkDecoration(buttonType, title),
      ),
    );
  }
}

Ink inkDecoration(String buttonType, String title) {
  if (buttonType == "LOGINWITHPASSBUTTON") {
    return Ink(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.white, Colors.white],
          ),
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.black, width: 1)),
      child: Container(
        height: 40,
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 16.0, fontStyle: FontStyle.normal, color: Colors.black),
        ),
      ),
    );
  } else {
    return Ink(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.redAccent, Colors.orange],
      )),
      child: Container(
        height: 40,
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 16.0, fontStyle: FontStyle.normal, color: Colors.white),
        ),
      ),
    );
  }
}
