class FormEntry {
  final String id;
  final String title;
  final Map<String, String> formData;
  bool isSent;
  bool isChecked;

  FormEntry({
    required this.id,
    required this.title,
    required this.formData,
    this.isSent = false,
    this.isChecked = false,
  });
}

class Animal {
  final int id;
  final String name;
  final String species;
  final int age;
  final String ownerName;
  final String ownerContact;
  final List<FormEntry> forms;

  Animal({
    required this.id,
    required this.name,
    required this.species,
    required this.age,
    required this.ownerName,
    required this.ownerContact,
    required this.forms,
  });
}
