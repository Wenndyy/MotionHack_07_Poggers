import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:poggers/models/user_model.dart';

class UserService {
  CollectionReference userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      userReference.doc(user.id).set({
        'email': user.email,
        'username': user.username,
        'saldo': user.saldo,
      });
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot = await userReference.doc(id).get();
      return UserModel(
        id: id,
        email: snapshot['email'],
        username: snapshot['username'],
        saldo: snapshot['saldo'],
      );
    } catch (e) {
      rethrow;
    }
  }
}
