import 'package:flutter/material.dart';
import 'package:flutter_badged/flutter_badge.dart';

class UserHeader extends StatefulWidget {
  const UserHeader(
      {super.key,
      required this.avatar,
      required this.username,
      required this.notificationCount});

  final String avatar;
  final String username;
  final int notificationCount;

  @override
  State<UserHeader> createState() => _UserHeaderState();
}

class _UserHeaderState extends State<UserHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Theme.of(context).focusColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              widget.avatar,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              Text(widget.username)
            ],
          ),
          const Spacer(),
          FlutterBadge(
            itemCount: widget.notificationCount,
            icon: const Icon(
              Icons.circle_notifications,
              size: 38,
            ),
          ),
        ],
      ),
    );
  }
}
