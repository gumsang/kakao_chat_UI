import 'package:flutter/material.dart';

class ChatStatus {
  final String _name;
  final String _lastChat;
  final String _nameImage;
  final String _date;
  final String _unreadCount;

  ChatStatus(this._name, this._nameImage, this._lastChat, this._date,
      this._unreadCount);
}

final myChatList = <ChatStatus>[];

void addChat(name, nameImage, lastChat, date, unreadcount) {
  myChatList.add(ChatStatus(name, nameImage, lastChat, date, unreadcount));
}

class MakeChatList extends StatelessWidget {
  const MakeChatList(this.myChatList, {Key? key}) : super(key: key);

  final ChatStatus myChatList;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: SizedBox(
            width: 55,
            height: 55,
            child: Image.network(
              myChatList._nameImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Container(
            child: (myChatList._lastChat.isEmpty)
                ? Center(
                    child: Text(
                      myChatList._name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        myChatList._name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        myChatList._lastChat,
                        style: const TextStyle(
                          fontSize: 14,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(myChatList._date),
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  alignment: Alignment.center,
                  width: 25,
                  height: 20,
                  color: Colors.red,
                  child: Text(
                    myChatList._unreadCount,
                    // '5',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class ChatListView extends StatelessWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MakeTopBar(),

        // ListView.builder(
        //   itemCount: myChatList.length,
        //   itemBuilder: (context, index) {
        // //     return MakeChatList(myChatList[index]);
        //   },
        // ),
      ],
    );
  }
}

class MakeTopBar extends StatelessWidget {
  const MakeTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //채팅
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "채팅",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        //////////
        //오픈채팅
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "오픈채팅",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        //////////
        Expanded(
          child: Container(
            color: Colors.amber,
          ),
        ),
        const SizedBox(
          width: 30,
          height: 30,
          child: Icon(
            Icons.search,
            size: 25,
          ),
        ),
        const SizedBox(
          width: 30,
          height: 30,
          child: Icon(
            Icons.chat_bubble_outline_rounded,
            size: 25,
          ),
        ),
        const SizedBox(
          width: 30,
          height: 30,
          child: Icon(
            Icons.music_note_outlined,
            size: 25,
          ),
        ),
        const SizedBox(
          width: 30,
          height: 30,
          child: Icon(
            Icons.settings,
            size: 25,
          ),
        ),
        const SizedBox(
          width: 10,
          height: 10,
        ),
      ],
    );
  }
}
