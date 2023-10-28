import 'package:avocado_demo/bloc/posts_bloc.dart';
import 'package:avocado_demo/constant/my_colors.dart';
import 'package:avocado_demo/presentation/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostsBloc()..add(PostLoadedEvent()),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            appBarTheme:
                const AppBarTheme(backgroundColor: MyColor.appbarbackground),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const Homepage()),
    );
  }
}
