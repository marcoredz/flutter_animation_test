import 'package:flutter/material.dart';

class AndroidIcon extends StatefulWidget {
  const AndroidIcon({Key? key}) : super(key: key);

  @override
  _AndroidIconState createState() => _AndroidIconState();
}

class _AndroidIconState extends State<AndroidIcon> with SingleTickerProviderStateMixin {
  late AnimationController _androidAC;
  late Animation _colorAnimation;
  //bool _androidIconToggled = false;

  @override
  void initState() {
    _androidAC = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _colorAnimation = ColorTween(begin: Colors.grey, end: Colors.amberAccent).animate(_androidAC);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _androidAC,
      builder: (BuildContext context, _) {
        return IconButton(
          icon: Icon(
            Icons.android,
            size: 50,
            color: _colorAnimation.value,
          ),
          onPressed: () => _androidAC.isCompleted ? _androidAC.reverse() : _androidAC.forward(),
        );
      },
    );
  }

  @override
  void dispose() {
    _androidAC.dispose();
    super.dispose();
  }
}
