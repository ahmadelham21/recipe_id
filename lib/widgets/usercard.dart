import 'package:flutter/material.dart';
import 'package:recipe_id/models/user_models.dart';

class UserCard extends StatelessWidget {
  final User user;

  UserCard(this.user);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        children: [
          Image.network(
            user.foto, // URL foto
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(user.username),
          ),
        ],
      ),
    );
  }
}
