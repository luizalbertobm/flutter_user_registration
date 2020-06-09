import 'package:flutter/material.dart';
import 'package:flutter_crud/models/user.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));

    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Container(
        width: 98,
        child: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.edit), onPressed: () {}, color: Colors.orange),
            IconButton(
                icon: Icon(Icons.delete), onPressed: () {}, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
