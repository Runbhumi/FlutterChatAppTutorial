import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class DatabaseMethods {
  Future<void> addUserInfo(Map<String, dynamic> userData) async {
    try {
      await FirebaseFirestore.instance.collection("users").add(userData);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<QuerySnapshot> getUserInfo(String email) async {
    return FirebaseFirestore.instance
        .collection("users")
        .where("userEmail", isEqualTo: email)
        .get();
  }

  Future<QuerySnapshot> searchByName(String searchField) {
    return FirebaseFirestore.instance
        .collection("users")
        .where('userName', isEqualTo: searchField)
        .get();
  }

  Future<void> addChatRoom(
      Map<String, dynamic> chatRoom, String chatRoomId) async {
    try {
      await FirebaseFirestore.instance
          .collection("chatRoom")
          .doc(chatRoomId)
          .set(chatRoom);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<Stream<QuerySnapshot>> getChats(String chatRoomId) async {
    return FirebaseFirestore.instance
        .collection("chatRoom")
        .doc(chatRoomId)
        .collection("chats")
        .orderBy('time')
        .snapshots();
  }

  Future<void> addMessage(
      String chatRoomId, Map<String, dynamic> chatMessageData) async {
    try {
      await FirebaseFirestore.instance
          .collection("chatRoom")
          .doc(chatRoomId)
          .collection("chats")
          .add(chatMessageData);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<Stream<QuerySnapshot>> getUserChats(String itIsMyName) async {
    return FirebaseFirestore.instance
        .collection("chatRoom")
        .where('users', arrayContains: itIsMyName)
        .snapshots();
  }
}
