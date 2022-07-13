import 'package:flutter/material.dart';
import 'package:kakao_chat_ui_clone/component/chatlist.dart';

class KakaoChat extends StatelessWidget {
  const KakaoChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ChatListView(),
      ),
    );
  }
}
