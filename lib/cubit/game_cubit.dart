import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:poggers/models/game_model.dart';
import 'package:poggers/services/game_service.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(GameInitial());

  void fetchData() async {
    try {
      emit(GameLoading());

      List<GameModel> games = await GameService().fetchData();
      emit(GameSuccess(games));
    } catch (e) {
      emit(GameFailed(e.toString()));
    }
  }
}
