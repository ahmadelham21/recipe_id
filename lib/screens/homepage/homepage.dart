import 'package:flutter/material.dart';
import 'package:recipe_id/data/resep_data.dart';
import 'package:recipe_id/data/user_data.dart';
import 'package:recipe_id/widgets/resepcard.dart';
import 'package:recipe_id/widgets/usercard.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: SingleChildScrollView(child: UserList()),
    );
  }
}

class ResepList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dummyResep.length,
      itemBuilder: (context, index) {
        return ResepCard(dummyResep[index]);
      },
    );
  }
}

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dummyUsers.length,
      itemBuilder: (context, index) {
        return UserCard(dummyUsers[index]);
      },
    );
  }
}
