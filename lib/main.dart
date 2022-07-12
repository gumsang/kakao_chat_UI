import 'package:flutter/material.dart';
import 'package:kakao_chat_ui_clone/component/friendlist.dart';
import 'package:kakao_chat_ui_clone/kakaomain.dart';

final myFriends = <Friends>[];

void main() {
  myFriends.add(Friends(
      'https://i.pinimg.com/originals/2c/2c/60/2c2c60b20cb817a80afd381ae23dab05.jpg',
      '유승호',
      '상태메세지 있음'));
  myFriends.add(Friends(
      'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/영화배우_박근록_프로필_사진1.jpg/1365px-영화배우_박근록_프로필_사진1.jpg',
      '박근록',
      '상태메세지 있음'));
  myFriends.add(Friends(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw_6cwV9Py2-gkGyj9oxgeOOg7bU6ld9nbog&usqp=CAU',
      '아이유',
      ''));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const KakaoMain(),
      debugShowCheckedModeBanner: false,
    );
  }
}
