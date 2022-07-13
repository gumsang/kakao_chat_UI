import 'package:flutter/material.dart';
import 'package:kakao_chat_ui_clone/component/chatlist.dart';
import 'package:kakao_chat_ui_clone/component/friendlist.dart';
import 'package:kakao_chat_ui_clone/kakaomain.dart';

final myFriends = <Friends>[];
final myProfile = Friends(
    'https://t1.daumcdn.net/cfile/tistory/21340A3650ED95850C', '김은상', '');

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

  addChat(
      '라라벨',
      'https://i.pinimg.com/236x/56/cc/80/56cc80ea80aff65bc09c7967b993821c.jpg',
      '짱구커플프사(wjdnwka)',
      '2020. 10. 22.',
      '300');
  addChat(
      '어피치',
      'https://www.fnnews.com/resource/media/image/2020/11/20/202011200752197268_l.jpg',
      '내년부터 내 카톡 프사',
      '07. 12.',
      '87');
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
