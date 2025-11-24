import 'package:flutter/material.dart';

class FormDetailsScreen extends StatelessWidget {
  final Map<String, String> formData;

  const FormDetailsScreen({super.key, required this.formData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Detayları'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Soru 1 / Cevap 1: ${formData['soru1']}'),
            const SizedBox(height: 8),
            Text('Soru 2 / Cevap 2: ${formData['soru2']}'),
            const SizedBox(height: 8),
            Text('Soru 3 / Cevap 3: ${formData['soru3']}'),
          ],
        ),
      ),
    );
  }
}
