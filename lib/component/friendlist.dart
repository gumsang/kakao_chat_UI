import 'package:flutter/material.dart';

class Friends {
  final String _nameImage;
  final String _name;
  final String _statusMessage;

  Friends(this._nameImage, this._name, this._statusMessage);
}

class FriendsTile extends StatelessWidget {
  const FriendsTile(this._friends, {Key? key}) : super(key: key);

  final Friends _friends;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(image: NetworkImage(_friends._nameImage)),
      title: Text(_friends._name),
      subtitle: Text(_friends._statusMessage),
    );
  }
}

//친구 리스트 제작
class MakeFriendList extends StatelessWidget {
  const MakeFriendList(this._friends, {Key? key}) : super(key: key);

  final Friends _friends;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FreindsStatus(_friends),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class FreindsStatus extends StatelessWidget {
  const FreindsStatus(this._friends, {Key? key}) : super(key: key);

  final Friends _friends;

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
              _friends._nameImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          child: (_friends._statusMessage.isEmpty)
              ? Center(
                  child: Text(
                  _friends._name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ))
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _friends._name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      _friends._statusMessage,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
        ),

        // const Divider(
        //   height: 1,
        //   thickness: 1,
        //   color: Colors.grey,
        // ),
      ],
    );
  }
}

class MyStatus extends StatelessWidget {
  const MyStatus(this._friends, {Key? key}) : super(key: key);

  final Friends _friends;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: SizedBox(
            width: 75,
            height: 75,
            child: Image.network(
              _friends._nameImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          child: (_friends._statusMessage.isEmpty)
              ? Center(
                  child: Text(
                  _friends._name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ))
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _friends._name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      _friends._statusMessage,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
        ),

        // const Divider(
        //   height: 1,
        //   thickness: 1,
        //   color: Colors.grey,
        // ),
      ],
    );
  }
}
