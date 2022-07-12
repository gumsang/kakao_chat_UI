import 'package:flutter/material.dart';
import 'package:kakao_chat_ui_clone/component/friendlist.dart';
import 'package:kakao_chat_ui_clone/main.dart';

class KakaoFriends extends StatelessWidget {
  const KakaoFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              // 친구 , 검색,친구추가,뮤직,설정 아이콘
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      "친구",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Icon(
                      Icons.person_add_alt_1_outlined,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Icon(
                      Icons.music_note_outlined,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Icon(
                      Icons.miscellaneous_services_outlined,
                      size: 30,
                    ),
                  ),
                ],
              ),
              //////////////////////
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: myFriends.length,
                  itemBuilder: (context, index) {
                    return MakeFriendList(myFriends[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
