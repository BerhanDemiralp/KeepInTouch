import 'package:flutter/material.dart';
import 'package:keepintouch/models.dart';

class FormDetailsScreen extends StatefulWidget {
  final FormEntry form;

  const FormDetailsScreen({super.key, required this.form});

  @override
  State<FormDetailsScreen> createState() => _FormDetailsScreenState();
}

class _FormDetailsScreenState extends State<FormDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.form.type.displayTitle),
      ),
      body: Container(
        color: Colors.green[50],
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Show form data if filled, otherwise show a message
            if (widget.form.isFilled)
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: widget.form.formData.entries.map((entry) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              entry.key, // The question
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 6.0),
                            Text(
                              entry.value, // The answer
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            ),
                            // Add a divider if it's not the last item
                            if (entry.key != widget.form.formData.keys.last)
                              const Divider(height: 24),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              )
            else
              const Expanded(
                child: Center(
                  child: Text(
                    'This form has not been filled out yet.',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
            const Spacer(),
            // Only show the checkbox card if the form is filled
            if (widget.form.isFilled)
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Kontrol Edildi', style: TextStyle(fontSize: 16)),
                      Checkbox(
                        value: widget.form.isChecked,
                        onChanged: (bool? newValue) {
                          if (newValue != null) {
                            setState(() {
                              widget.form.isChecked = newValue;
                            });
                          }
                        },
                        activeColor: Theme.of(context).colorScheme.primary,
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
