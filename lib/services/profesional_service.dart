import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:poggers/models/profesional_model.dart';

class ProfesionalService {
  CollectionReference proReference =
      FirebaseFirestore.instance.collection('proplayer');

  Future<List<ProfesionalModel>> fetchData() async {
    try {
      QuerySnapshot result = await proReference.get();

      List<ProfesionalModel> pro = result.docs.map((e) {
        return ProfesionalModel.fromJson(
          e.id,
          e.data() as Map<String, dynamic>,
        );
      }).toList();
      return pro;
    } catch (e) {
      rethrow;
    }
  }
}
