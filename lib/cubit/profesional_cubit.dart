import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:poggers/services/profesional_service.dart';

import '../models/profesional_model.dart';

part 'profesional_state.dart';

class ProfesionalCubit extends Cubit<ProfesionalState> {
  ProfesionalCubit() : super(ProfesionalInitial());
  void fetchData() async {
    try {
      emit(ProfesionalLoading());

      List<ProfesionalModel> games = await ProfesionalService().fetchData();
      emit(ProfesionalSuccess(games));
    } catch (e) {
      emit(ProfesionalFailed(e.toString()));
    }
  }
}
