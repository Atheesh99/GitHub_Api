import 'package:flutter/material.dart';
import 'package:github_api/model/git_model.dart';

class RepositoryCard extends StatelessWidget {
  final UserModel userModel;

  RepositoryCard({required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          userModel.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          userModel.description ?? 'No description available',
          maxLines: 3,
        ),
        trailing: Text('${userModel.stars} stars'),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(userModel.ownerAvatar),
        ),
        onTap: () {},
      ),
    );
  }
}
