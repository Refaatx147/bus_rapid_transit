import 'package:bus_rapid_transit/features/auth/data/datasources/remote_data_source/auth_remote_data_source.dart';
import 'package:bus_rapid_transit/features/auth/data/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  User? get currentUser => FirebaseAuth.instance.currentUser;





  Future<Map<String, dynamic>?> getUserData(String uid) async {
  final doc = await _firestore.collection('users').doc(uid).get();
  return doc.data();
}
  @override
  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;
     
      
    if (user == null) throw FirebaseAuthException(code: 'user-not-found');

        final data = await getUserData(user.uid);
        
        return UserModel(
          id: user.uid ,
          email: user.email??'',
          firstName: data?['firstName'] ?? '',
          lastName: data?['lastName'] ?? '',
      dateOfBirth: (data?['dateOfBirth'] as Timestamp?)!.toDate(),
          gender: data?['gender'] ?? '',
        );
      } 



  @override
  Future<UserModel> signUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String gender,
    required DateTime dateOfBirth,
  }) async {
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,

      );
      User? user = userCredential.user;
      if (user == null)    throw FirebaseAuthException(code: 'user-not-found');

      
       await _firestore.collection('users').doc(user.uid).set({
          'firstName': firstName,
          'lastName': lastName,
          'gender': gender,
          'dateOfBirth': dateOfBirth,
          'email': email,
        });

        return UserModel(
          id: user.uid,
          email: user.email!,
          firstName: firstName,
          lastName: lastName,
          dateOfBirth: dateOfBirth,
          gender: gender,
        );

      
    }


  @override
  Future<void> resetPassword({
    required String email,
  }) async {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    }

}
