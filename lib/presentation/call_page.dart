import 'package:flutter/material.dart';
import 'package:flutter_first/utils/common_app_bar.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Call fragment"),
    );
  }
}