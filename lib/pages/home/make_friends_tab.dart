import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:friendzy/themes/light_theme.dart';
import 'package:friendzy/widgets/post_card.dart';
import 'package:google_fonts/google_fonts.dart';

class MakeFriendsTab extends StatelessWidget {
  const MakeFriendsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (ctx, idx) {
          if (idx == 2){
            return const Padding(
            padding: EdgeInsets.only(bottom: 102),
            child: PostCard(),
          );
          }
          return const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: PostCard(),
          );
        },
      ),
    );
  }
}
