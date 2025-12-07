import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:keepintouch/form_details_screen.dart';
import 'package:keepintouch/models.dart';

class AnimalProfileScreen extends StatefulWidget {
  final Animal animal;

  const AnimalProfileScreen({super.key, required this.animal});

  @override
  State<AnimalProfileScreen> createState() => _AnimalProfileScreenState();
}

class _AnimalProfileScreenState extends State<AnimalProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // Filter for sent forms and sort by date (newest first)
    final sentForms = widget.animal.forms.where((form) => form.isSent).toList();
    sentForms.sort((a, b) {
      if (a.sentAt == null && b.sentAt == null) return 0;
      if (a.sentAt == null) return 1;
      if (b.sentAt == null) return -1;
      return b.sentAt!.compareTo(a.sentAt!);
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.animal.name),
        elevation: 0,
      ),
      body: Container(
        color: Colors.green[50],
        child: Column(
          children: [
            // Header with animal avatar
            Container(
              color: Theme.of(context).colorScheme.primary,
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.pets, size: 50, color: Colors.grey),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      widget.animal.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Animal and Owner Information
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Hayvan Bilgileri',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(Icons.info_outline, color: Colors.grey),
                              const SizedBox(width: 8),
                              Text('Tür: ${widget.animal.species}'),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(Icons.cake_outlined, color: Colors.grey),
                              const SizedBox(width: 8),
                              Text('Yaş: ${widget.animal.age}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Sahip Bilgileri',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(Icons.person_outline, color: Colors.grey),
                              const SizedBox(width: 8),
                              Text('Ad: ${widget.animal.owner.name}'),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(Icons.phone_outlined, color: Colors.grey),
                              const SizedBox(width: 8),
                              Text('İletişim: ${widget.animal.owner.contact}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(indent: 16, endIndent: 16),
            // List of Filled Forms
            Expanded(
              child: ListView.builder(
                itemCount: sentForms.length,
                itemBuilder: (context, index) {
                  final form = sentForms[index];
                  return Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      title: Text('Submission on ${DateFormat.yMd().format(form.sentAt!)}', style: const TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(form.isChecked ? 'Reviewed' : 'Awaiting Review'),
                      trailing: Checkbox(
                        value: form.isChecked,
                        onChanged: (bool? newValue) {
                          if (newValue != null) {
                            setState(() {
                              form.isChecked = newValue;
                            });
                          }
                        },
                        activeColor: Theme.of(context).colorScheme.primary,
                      ),
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FormDetailsScreen(form: form),
                          ),
                        );
                        setState(() {}); // Rebuild to reflect changes
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
