import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';

enum UserRole { admin, user, superAdmin }

class RegisterProvider extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<void> registerUser({
    required String username,
    required String email,
    required String password,
    required UserRole rol,
    required String birth,
    required String token,
    required Function createdAt,
    required Function(String) onError,
  }) async {
    try {
      final String usernameLoweCase = username.toLowerCase();

      final bool userExist = await checkUserExist(usernameLoweCase);
      if (userExist) {
        onError('El usuario ya existe');
        return;
      }

      final UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      final User user = userCredential.user!;
      final String userId = user.uid;

      final userData = {
        'id': userId,
        'username': username,
        'username_lowercase': usernameLoweCase,
        'email': email,
        'rol': rol,
        'birth':birth,
        'token': token,
        'createdAt': createdAt
      };

      await _firestore.collection('users').doc(userId).set(userData);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        onError('La contraseña muy debil');
      } else if (e.code == 'email-ready-in-use') {
        onError('Correo existente');
      } else {
        onError(e.code.toString());
      }
    } catch (e) {
      onError('Error al registrar el usuario');
    }
  }

  Future<bool> checkUserExist(String username) async {
    final QuerySnapshot resul = await _firestore
        .collection('users')
        .where('username', isEqualTo: username)
        .limit(1)
        .get();

    return resul.docs.isNotEmpty;
  }
}
