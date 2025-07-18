import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Notifications', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 24),
        ...List.generate(3, (i) => Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            tileColor: Colors.deepPurple.shade50,
            leading: const Icon(Icons.notifications, color: Colors.deepPurple),
            title: Text('Announcement ${i + 1}'),
            subtitle: const Text('This is a company announcement.'),
            trailing: Icon(Icons.chevron_right, color: Colors.deepPurple.shade200),
          ),
        )),
      ],
    );
  }
} 