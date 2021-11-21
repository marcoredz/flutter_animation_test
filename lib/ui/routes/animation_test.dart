import 'package:flutter/material.dart';
import 'package:flutter_animation_test/ui/routes/detail_route.dart';
import 'package:flutter_animation_test/widgets/android_icon.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimationTest extends StatefulWidget {
  const AnimationTest({Key? key}) : super(key: key);

  @override
  State<AnimationTest> createState() => _AnimationTestState();
}

class _AnimationTestState extends State<AnimationTest> {
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
            const Center(
              child: AndroidIcon(),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailRoute(),
                ),
              ),
              child: Hero(
                tag: 'pirlo_image',
                child: Image.asset('assets/images/pirlo.png'),
              ),
            ),
            Row(
              children: [
                TweenAnimationBuilder(
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.black,
                  ),
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: const Duration(milliseconds: 700),
                  curve: Curves.bounceInOut,
                  builder: (_, double val, child) {
                    return Container(
                      margin: EdgeInsets.only(top: val * 30),
                      child: child,
                    );
                    // return Opacity(
                    //   opacity: val,
                    //   child: child,
                    // );
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
