import 'package:firebase_auth/firebase_auth.dart';
import 'package:poggers/models/user_model.dart';
import 'package:poggers/services/user_services.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<UserModel> signUp({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      UserModel user = UserModel(
        id: userCredential.user!.uid,
        username: username,
        email: email,
        saldo: 28000000,
      );
      return user;
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      UserModel user =
          await UserService().getUserById(userCredential.user!.uid);
      return user;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw e;
    }
  }
}
