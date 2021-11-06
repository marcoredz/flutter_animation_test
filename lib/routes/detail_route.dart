import 'package:flutter/material.dart';

class DetailRoute extends StatelessWidget {
  const DetailRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Hero(
          tag: 'pirlo_image',
          child: Image.asset('assets/images/pirlo.png'),
        ),
      )),
    );
  }
}
