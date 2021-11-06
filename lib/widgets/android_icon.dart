import 'package:flutter/material.dart';

class AndroidIcon extends StatefulWidget {
  const AndroidIcon({Key? key}) : super(key: key);

  @override
  _AndroidIconState createState() => _AndroidIconState();
}

class _AndroidIconState extends State<AndroidIcon> with SingleTickerProviderStateMixin {
  late AnimationController _androidAC;
  late Animation _colorAnimation;
  late Animation _sizeAnimation;
  //bool _androidIconToggled = false;

  @override
  void initState() {
    _androidAC = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _colorAnimation =
        ColorTween(begin: Colors.grey, end: Colors.orangeAccent.shade700).animate(_androidAC);
    _sizeAnimation = TweenSequence([
      TweenSequenceItem<double>(
        tween: Tween(begin: 50, end: 70),
        weight: 50,
      ),
      TweenSequenceItem<double>(
        tween: Tween(begin: 70, end: 50),
        weight: 50,
      ),
    ]).animate(_androidAC);

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
            color: _colorAnimation.value,
            size: _sizeAnimation.value,
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
