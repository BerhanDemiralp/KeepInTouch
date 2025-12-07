import 'package:flutter/material.dart';

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
  final int? checkedByUserId;
  final String title;
  final Map<String, String> formData;
  bool isSent;
  bool isChecked;
  final DateTime createdAt;
  final DateTime? sentAt;
  final DateTime? checkedAt;
  final DateTime updatedAt;

  FormEntry({
    required this.id,
    required this.animalId,
    this.checkedByUserId,
    required this.title,
    required this.formData,
    this.isSent = false,
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
