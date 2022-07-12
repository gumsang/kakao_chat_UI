import 'package:flutter/material.dart';
import 'package:kakao_chat_ui_clone/kakaochat.dart';
import 'package:kakao_chat_ui_clone/kakaofriends.dart';
import 'package:kakao_chat_ui_clone/kakaomore.dart';

class KakaoMain extends StatefulWidget {
  const KakaoMain({Key? key}) : super(key: key);

  @override
  State<KakaoMain> createState() => _KakaoMainState();
}

class _KakaoMainState extends State<KakaoMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(),
      ),
      // bottom navigation 선언
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '친구',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: '채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: '더보기',
          ),
        ],
        currentIndex: _selectedIndex, // 지정 인덱스로 이동
        selectedItemColor: Colors.lightGreen,
        onTap: _onItemTapped, // 선언했던 onItemTapped
      ),
    );
  }

  int _selectedIndex = 0;
  // 선택된 페이지의 인덱스 넘버 초기화
  final List<Widget> _widgetOptions = <Widget>[
    KakaoChat(),
    KakaoFriends(),
    KakaoMore(),
  ];
  // 3개의 페이지를 연결할 예정이므로 3개의 페이지를 여기서 지정해준다. 탭 레이아웃은 3개.
  void _onItemTapped(int index) {
    // 탭을 클릭했을떄 지정한 페이지로 이동
    setState(() {
      _selectedIndex = index;
    });
  }
}
