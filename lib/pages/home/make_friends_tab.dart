import 'package:flutter/material.dart';
import 'package:friendzy/data/database.dart';
import 'package:friendzy/widgets/post_card.dart';

class MakeFriendsTab extends StatelessWidget {
  const MakeFriendsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final db = Database();
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: ListView.builder(
        itemCount: db.postData.length,
        itemBuilder: (ctx, idx) {
          Map<String, dynamic> data = db.postData[idx];
          if (idx == db.postData.length) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 102),
              child: PostCard(
                postPict: data['postPict'],
                name: data['name'],
                caption: data['caption'],
                type: data['type'],
                location: data['location'],
                profilePict: data['profilePict'],
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: PostCard(
              postPict: data['postPict'],
              name: data['name'],
              caption: data['caption'],
              type: data['type'],
              location: data['location'],
              profilePict: data['profilePict'],
            ),
          );
        },
      ),
    );
  }
}
