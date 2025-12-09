import 'package:flutter/material.dart';

enum FormType {
  RoutineCheck,
  Vaccination,
  Surgery,
  Emergency,
}

// Helper extension for FormType
extension FormTypeExtension on FormType {
  String get displayTitle {
    switch (this) {
      case FormType.RoutineCheck:
        return 'Routine Check';
      case FormType.Vaccination:
        return 'Vaccination';
      case FormType.Surgery:
        return 'Surgery';
      case FormType.Emergency:
        return 'Emergency';
    }
  }

  IconData get icon {
    switch (this) {
      case FormType.RoutineCheck:
        return Icons.check_circle_outline;
      case FormType.Vaccination:
        return Icons.colorize; // Represents a syringe
      case FormType.Surgery:
        return Icons.local_hospital;
      case FormType.Emergency:
        return Icons.warning_amber_rounded;
    }
  }
}

class Owner {
  final int id;
  final String name;
  final String contact;
  final DateTime createdAt;
  final DateTime updatedAt;

  Owner({
    required this.id,
    required this.name,
    required this.contact,
    required this.createdAt,
    required this.updatedAt,
  });
}

class User {
  final int id;
  final String username;
  final String email;
  final String role;
  final bool isActive;
  final DateTime createdAt;
  final DateTime? lastLogin;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.role,
    this.isActive = true,
    required this.createdAt,
    this.lastLogin,
  });
}

class FormEntry {
  final String id;
  final int animalId;
  final FormType type;
  final int? checkedByUserId;
  final Map<String, String> formData;
  bool isChecked;
  final DateTime createdAt;
  final DateTime? sentAt; // Represents the date it was filled
  final DateTime? checkedAt;
  final DateTime updatedAt;

  bool get isFilled => formData.isNotEmpty;

  FormEntry({
    required this.id,
    required this.animalId,
    required this.type,
    this.checkedByUserId,
    required this.formData,
    this.isChecked = false,
    required this.createdAt,
    this.sentAt,
    this.checkedAt,
    required this.updatedAt,
  });
}

class Animal {
  final int id;
  final int ownerId;
  final String name;
  final String species;
  final int age;
  final DateTime? lastCheckDate;
  final DateTime createdAt;
  final DateTime updatedAt;
  final Owner owner;
  final List<FormEntry> forms;

  Animal({
    required this.id,
    required this.ownerId,
    required this.name,
    required this.species,
    required this.age,
    this.lastCheckDate,
    required this.createdAt,
    required this.updatedAt,
    required this.owner,
    required this.forms,
  });
}
