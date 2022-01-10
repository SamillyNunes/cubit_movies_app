import 'package:cubit_movies_example/movies/models/movie_model.dart';
import 'package:equatable/equatable.dart';

/// Equatable é um pacote p/ auxiliar comparações entre classes baseando-se entre seu conteúdo
abstract class MoviesState extends Equatable {}

class InitialState extends MoviesState {
  @override
  List<Object?> get props => [];
}

class LoadingState extends MoviesState {
  @override
  List<Object?> get props => [];
}

class LoadedState extends MoviesState {
  final List<MovieModel> movies;

  LoadedState(this.movies);

  @override
  List<Object?> get props => [movies];
}

class ErrorState extends MoviesState {
  @override
  List<Object?> get props => [];
}
