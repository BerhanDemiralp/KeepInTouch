import 'package:flutter/material.dart';
import 'package:untitled/animal_profile_screen.dart';
import 'package:untitled/mock_data.dart';
import 'package:untitled/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showUnsent = false;
  bool _showUnchecked = false;

  @override
  Widget build(BuildContext context) {
    final filteredAnimals = mockAnimals.where((animal) {
      if (!_showUnsent && !_showUnchecked) {
        return true; // Show all if no filter is active
      }
      bool matches = false;
      if (_showUnsent) {
        matches = matches || animal.forms.any((form) => !form.isSent);
      }
      if (_showUnchecked) {
        matches = matches || animal.forms.any((form) => !form.isChecked);
      }
      return matches;
    }).toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilterChip(
                label: const Text('Gönderilmemiş'), // Unsent
                selected: _showUnsent,
                onSelected: (selected) {
                  setState(() {
                    _showUnsent = selected;
                    if (selected) {
                      _showUnchecked = false;
                    }
                  });
                },
              ),
              const SizedBox(width: 8),
              FilterChip(
                label: const Text('Kontrol Edilmemiş'), // Unchecked
                selected: _showUnchecked,
                onSelected: (selected) {
                  setState(() {
                    _showUnchecked = selected;
                    if (selected) {
                      _showUnsent = false;
                    }
                  });
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: filteredAnimals.length,
            itemBuilder: (context, index) {
              final animal = filteredAnimals[index];
              return Card(
                child: ListTile(
                  title: Text(animal.name),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnimalProfileScreen(animal: animal),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
