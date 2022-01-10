import 'package:cubit/cubit.dart';
import 'package:cubit_movies_example/movies/movies_state.dart';
import 'package:cubit_movies_example/movies/repositories/movie_repository.dart';

class MoviesCubit extends Cubit<MoviesState> {
  final MovieRepository repository;

  MoviesCubit({required this.repository}) : super(InitialState()) {
    _getMovies(); // para logo que ser inicializado, carregar os filmes
  }

  void _getMovies() async {
    try {
      emit(LoadingState());

      final movies = await repository.getMovies();

      emit(LoadedState(movies));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
