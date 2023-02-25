import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:poggers/models/game_model.dart';

class GameService {
  CollectionReference gameReference =
      FirebaseFirestore.instance.collection('category-game');

  Future<List<GameModel>> fetchData() async {
    try {
      QuerySnapshot result = await gameReference.get();

      List<GameModel> game = result.docs.map((e) {
        return GameModel.fromJson(
          e.id,
          e.data() as Map<String, dynamic>,
        );
      }).toList();
      return game;
    } catch (e) {
      rethrow;
    }
  }
}
