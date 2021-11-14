import 'package:flutter/material.dart';
import 'package:flutter_animation_test/routes/animation_test.dart';
import 'package:flutter_animation_test/routes/test_route.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Expanded(
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) => const TestRoute(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amberAccent.shade400,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text("Test",
                        style: GoogleFonts.quicksand(fontSize: 17, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (builder) => const AnimationTest(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amberAccent.shade400,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text("Animation test",
                        style: GoogleFonts.quicksand(fontSize: 17, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
