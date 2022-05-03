import 'package:auto_route/auto_route.dart';
import 'package:chatapp_dda/Presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class NewMessagePage extends StatelessWidget {
  const NewMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Message'),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('New Group'),
            onTap: () {
              context.router.push(
                const NewGroupPageRoute(),
              );
            },
            leading: const Icon(
              Icons.group,
              color: Colors.white,
            ),
          ),
          ListTile(
            title: const Text('New Secret Chat'),
            subtitle: const Text('Coming Soon...'),
            leading: const Icon(
              Icons.lock_rounded,
              color: Colors.white,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
