part of 'game_cubit.dart';

abstract class GameState extends Equatable {
  const GameState();

  @override
  List<Object> get props => [];
}

class GameInitial extends GameState {}

class GameLoading extends GameState {}

class GameSuccess extends GameState {
  final List<GameModel> game;

  GameSuccess(this.game);

  @override
  List<Object> get props => [game];
}

class GameFailed extends GameState {
  final String error;
  GameFailed(this.error);

  @override
  List<Object> get props => [error];
}
