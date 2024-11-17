import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

enum AuthStatus { notAuthentication, checkIn, authenticated }

class LoginProvider extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  AuthStatus authStatus = AuthStatus.notAuthentication;

  Future<void> loginUser({
    required String usernameOrEmail,
    required String password,
    required Function onSuccess,
    required Function(String) onError,
  }) async {
    try {
      authStatus = AuthStatus.checkIn;
      notifyListeners();
      //login username
      final String usernameOrEmailLowerCase = usernameOrEmail.toLowerCase();
      final QuerySnapshot result = await _fireStore
          .collection('users')
          .where('username_lowercase', isEqualTo: usernameOrEmailLowerCase)
          .limit(1)
          .get();
      if (result.docs.isNotEmpty) {
        final String email = result.docs.first.get('email');
        final UserCredential userCredential = await _auth
            .signInWithEmailAndPassword(email: email, password: password);
        onSuccess();
        return;
      }

      //login email
      final QuerySnapshot resultEmail = await _fireStore
          .collection('users')
          .where('email', isEqualTo: usernameOrEmailLowerCase)
          .limit(1)
          .get();

      if (resultEmail.docs.isNotEmpty) {
        final String email = resultEmail.docs.first.get('email');
        final UserCredential userCredential = await _auth
            .signInWithEmailAndPassword(email: email, password: password);
        onSuccess();
        return;
      }

      onError("No se encontro usuario");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        onError('Usuario o contraseña incorrecta.');
      } else {
        onError(e.toString());
      }
    } catch (e) {
      onError(e.toString());
    }
  }
}
