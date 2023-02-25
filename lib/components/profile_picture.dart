import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String imageUrl;

  const ProfilePicture({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
  }
}
