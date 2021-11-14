import 'package:flutter/material.dart';

class TestRoute extends StatefulWidget {
  const TestRoute({Key? key}) : super(key: key);

  @override
  _TestRouteState createState() => _TestRouteState();
}

class _TestRouteState extends State<TestRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
    );
  }
}
