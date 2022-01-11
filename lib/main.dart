import 'package:cubit_movies_example/movies/movie_page.dart';
import 'package:cubit_movies_example/movies/movies_cubit.dart';
import 'package:cubit_movies_example/movies/repositories/movie_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<MoviesCubit>(
        create: (context) => MoviesCubit(
          repository: MovieRepository(Dio()),
        ),
        child: const MoviePage(),
      ),
    );
  }
}
