import 'package:flutter/material.dart';

class RequestsScreen extends StatelessWidget {
  const RequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.assignment, color: Colors.deepPurple, size: 36),
                      const SizedBox(width: 16),
                      Text('Submit Request', style: Theme.of(context).textTheme.headlineMedium),
                    ],
                  ),
                  const SizedBox(height: 24),
                  TextField(
                    decoration: const InputDecoration(labelText: 'Type (e.g. vacation, permission, tools)'),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: const InputDecoration(labelText: 'Details'),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 32),
          Text('My Requests', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          ...List.generate(2, (i) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              tileColor: Colors.deepPurple.shade50,
              leading: const Icon(Icons.assignment_turned_in, color: Colors.deepPurple),
              title: Text('Vacation Request'),
              subtitle: Text('Status: ${i == 0 ? 'Pending' : 'Approved'}'),
              trailing: Icon(i == 0 ? Icons.hourglass_empty : Icons.check_circle, color: i == 0 ? Colors.orange : Colors.green),
            ),
          )),
        ],
      ),
    );
  }
} 