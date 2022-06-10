import 'package:firebase_auth/firebase_auth.dart';

class Authentication {
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static User? currentFirebaseUser;

  static Future<dynamic> signUp({required String email, required String pass}) async{
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: pass);
      print('auth登録完了');
      return true;
    } on FirebaseAuthException catch (e) {
      print('auth登録エラー');
      return false;
    }
  }

  static Future<dynamic> emailSignIn({required String email, required String pass}) async {
    try {
      final UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: pass
      );

      currentFirebaseUser = result.user;
      print('authサインイン完了');

      return true;
    } on FirebaseAuthException catch (e) {
      print('authサインイン失敗 $e');

      return false;
    }
  }
}