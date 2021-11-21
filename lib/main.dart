import 'package:flutter/material.dart';
import 'package:flutter_animation_test/cubit/switch_theme/switch_theme_cubit.dart';
import 'package:flutter_animation_test/ui/routes/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SwitchThemeCubit>(
      create: (context) => SwitchThemeCubit(),
      child: BlocBuilder<SwitchThemeCubit, ThemeData>(
        builder: (context, _) {
          return MaterialApp(
            title: '',
            theme: context.read<SwitchThemeCubit>().state,
            home: const Home(),
          );
        },
      ),
    );
  }
}
