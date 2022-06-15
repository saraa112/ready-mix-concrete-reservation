import 'package:concrete_reserv/src/Approot.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

Future backgroundMessage(RemoteMessage message)
async{
   print('----------------------------------');
   print('${message.notification!.body}');
}
void main()

   async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      FirebaseMessaging.onBackgroundMessage(backgroundMessage);

   runApp(AppRoot());
}