import 'package:epwing_viewer/bloc/search/search_bloc.dart';
import 'package:epwing_viewer/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'EPWING Viewer',
        home: SearchPage(),
      ),
    );
  }
}
