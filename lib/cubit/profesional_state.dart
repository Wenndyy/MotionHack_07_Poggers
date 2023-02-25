part of 'profesional_cubit.dart';

abstract class ProfesionalState extends Equatable {
  const ProfesionalState();

  @override
  List<Object> get props => [];
}

class ProfesionalInitial extends ProfesionalState {}

class ProfesionalLoading extends ProfesionalState {}

class ProfesionalSuccess extends ProfesionalState {
  final List<ProfesionalModel> profesional;

  ProfesionalSuccess(this.profesional);

  @override
  List<Object> get props => [profesional];
}

class ProfesionalFailed extends ProfesionalState {
  final String error;
  ProfesionalFailed(this.error);

  @override
  List<Object> get props => [error];
}
