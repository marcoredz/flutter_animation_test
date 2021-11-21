import 'package:flutter/material.dart';
import 'package:flutter_animation_test/cubit/switch_theme/switch_theme_cubit.dart';
import 'package:flutter_animation_test/ui/themes/app_themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestRoute extends StatefulWidget {
  const TestRoute({Key? key}) : super(key: key);

  @override
  _TestRouteState createState() => _TestRouteState();
}

class _TestRouteState extends State<TestRoute> {
  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<SwitchThemeCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text("Amber"),
              onPressed: () => themeCubit.setTheme(eThemes.amber),
            ),
            ElevatedButton(
              child: const Text("Purple"),
              onPressed: () => themeCubit.setTheme(eThemes.purple),
            ),
            ElevatedButton(
              child: const Text("Custom Green"),
              onPressed: () => themeCubit.setTheme(eThemes.customGreen),
            ),
          ],
        ),
      ),
    );
  }
}
