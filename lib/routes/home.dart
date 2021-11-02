import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /* container var */
  double _width = 100;
  double _height = 50;
  double _margin = 0;
  Color _color = Colors.grey;

  bool _toggleAnimation = false;

  void _manageState() {
    setState(() {
      if (!_toggleAnimation) {
        //_margin = 10;
        _color = Colors.black;
        _height = 0;
      } else {
        //_margin = 0;
        _color = Colors.blueGrey;
        _height = 50;
      }
    });
    _toggleAnimation = !_toggleAnimation;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TweenAnimationBuilder(
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.black,
                  ),
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: const Duration(milliseconds: 1000),
                  builder: (_, double val, child) {
                    return Opacity(
                      opacity: val,
                      child: child,
                    );
                  },
                )
              ],
            ),
            Row(
              children: [
                AnimatedContainer(
                  width: _width,
                  height: _height,
                  color: _color,
                  margin: EdgeInsets.only(left: _margin),
                  duration: const Duration(milliseconds: 250),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () => _manageState(),
              child: Text(
                "Test",
                style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Text(
            //   "Try",
            //   style: GoogleFonts.quicksand(
            //     textStyle: TextStyle(
            //       fontSize: _fontSize,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.amber.shade800,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
