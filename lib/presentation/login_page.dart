import 'package:flutter/material.dart';
import 'package:flutter_first/presentation/home_page.dart';

import 'sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    String _email,_password;

    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: formKey,
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
                      hintText: 'Email',
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter email";
                      }else if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                        return "Please enter valid email";
                      }else{
                        return null;
                      }
                    },
                    onSaved: (name){
                      _email = name!;
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 24.0, 0, 0),
                  child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      controller: passwordController,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter password";
                      }else{
                        return null;
                      }
                    },
                    onSaved: (name){
                      _password = name!;
                    },
                      decoration: const InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                  ),),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.fromLTRB(0, 5.0, 0, 0),
                  child: const Text(
                    "Forgot Password?",key: Key("forgotPassword"),
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 60.0, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        if(formKey.currentState!.validate()){
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => const HomePage()));
                        }else{
                          return;
                        }

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
                          child: const Text(
                            "Sign In",
                            style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.normal),
                          ),
                        ),
                      ),
                    )),
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
