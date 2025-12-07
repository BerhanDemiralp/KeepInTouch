import 'package:flutter/material.dart';
import 'package:keepintouch/animal_profile_screen.dart';
import 'package:keepintouch/mock_data.dart';
import 'package:keepintouch/models.dart';

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

    return Container(
      color: Colors.green[50], // A light green background
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
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
                final hasUncheckedForm =
                    animal.forms.any((form) => !form.isChecked);
                final allFormsChecked =
                    animal.forms.isNotEmpty && !hasUncheckedForm;

                Icon statusIcon;
                Color statusColor;
                String statusText;

                if (allFormsChecked) {
                  statusIcon = const Icon(Icons.check_circle, color: Colors.white);
                  statusColor = Colors.green;
                  statusText = 'All Checked';
                } else if (hasUncheckedForm) {
                  statusIcon = const Icon(Icons.warning, color: Colors.white);
                  statusColor = Colors.orange;
                  statusText = 'Unchecked Forms';
                } else {
                  // No forms
                  statusIcon = const Icon(Icons.remove_circle_outline,
                      color: Colors.white);
                  statusColor = Colors.grey;
                  statusText = 'No Forms';
                }

                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AnimalProfileScreen(animal: animal),
                        ),
                      );
                      setState(() {});
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            child: const Icon(Icons.pets, color: Colors.white, size: 30),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  animal.name,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  animal.species,
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: statusColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                statusIcon,
                                const SizedBox(width: 4),
                                Text(
                                  statusText,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
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
