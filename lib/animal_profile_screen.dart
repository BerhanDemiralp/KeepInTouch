import 'package:flutter/material.dart';
import 'package:untitled/form_details_screen.dart';
import 'package:untitled/models.dart';

class AnimalProfileScreen extends StatelessWidget {
  final Animal animal;

  const AnimalProfileScreen({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.name),
      ),
      body: Column(
        children: [
          // Animal and Owner Information
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Hayvan Bilgileri', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('Tür: ${animal.species}'),
                Text('Yaş: ${animal.age}'),
                const SizedBox(height: 16),
                const Text('Sahip Bilgileri', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('Ad: ${animal.ownerName}'),
                Text('İletişim: ${animal.ownerContact}'),
              ],
            ),
          ),
          const Divider(),
          // List of Filled Forms
          Expanded(
            child: ListView.builder(
              itemCount: animal.forms.length,
              itemBuilder: (context, index) {
                final form = animal.forms[index];
                return Card(
                  child: ListTile(
                    title: Text(form.title),
                    subtitle: Text('Gönderildi: ${form.isSent}, Kontrol Edildi: ${form.isChecked}'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormDetailsScreen(formData: form.formData),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
