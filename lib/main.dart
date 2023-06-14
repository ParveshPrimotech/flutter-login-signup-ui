import 'package:flutter/material.dart';
import 'package:flutter_first/presentation/home_page.dart';
import 'package:flutter_first/presentation/login_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tutorial',
      home: LoginPage(),
    ),
  );
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _navigateToNextScreen(context, HomePage());
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

_navigateToNextScreen(BuildContext context, Widget route) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => (route)));
}
