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
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Stack(
              children: [
                Opacity(
                  opacity: 0.2,
                  child: Image.asset('assets/images/pirlo.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Text(
                        "Title",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "Title",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
