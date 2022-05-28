import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BookListModel extends ChangeNotifier{
  final Stream<QuerySnapshot> _usersStream =
  FirebaseFirestore.instance.collection('books').snapshots();
  void fetchBookList(){
    _usersStream.listen((QuerySnapshot snapshot) {
      snapshot.docs.map((DocumentSnapshot document) {
        Map<String, dynamic> data = document.data()! as Map<String, dynamic>;

      }).toList();
    });
    

  }
}