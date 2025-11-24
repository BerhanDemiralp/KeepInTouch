import 'package:untitled/models.dart';

final List<Animal> mockAnimals = [
  Animal(
    id: 1,
    name: 'Hayvan 1',
    species: 'Köpek',
    age: 3,
    ownerName: 'Ali Veli',
    ownerContact: '555-1234',
    forms: [
      FormEntry(id: '1', title: 'Form 1', formData: {'soru1': 'Cevap 1A', 'soru2': 'Cevap 2A', 'soru3': 'Cevap 3A'}, isSent: true, isChecked: true),
      FormEntry(id: '2', title: 'Form 2', formData: {'soru1': 'Cevap 1B', 'soru2': 'Cevap 2B', 'soru3': 'Cevap 3B'}, isSent: true, isChecked: false),
    ],
  ),
  Animal(
    id: 2,
    name: 'Hayvan 2',
    species: 'Kedi',
    age: 2,
    ownerName: 'Ayşe Yılmaz',
    ownerContact: '555-5678',
    forms: [
      FormEntry(id: '3', title: 'Form 1', formData: {'soru1': 'Cevap 1C', 'soru2': 'Cevap 2C', 'soru3': 'Cevap 3C'}, isSent: false, isChecked: false),
    ],
  ),
  Animal(
    id: 3,
    name: 'Hayvan 3',
    species: 'Kuş',
    age: 1,
    ownerName: 'Mehmet Kaya',
    ownerContact: '555-9012',
    forms: [
      FormEntry(id: '4', title: 'Form 1', formData: {'soru1': 'Cevap 1D', 'soru2': 'Cevap 2D', 'soru3': 'Cevap 3D'}, isSent: true, isChecked: true),
    ],
  ),
  Animal(id: 4, name: 'Hayvan 4', species: 'Tavşan', age: 1, ownerName: 'Zeynep Demir', ownerContact: '555-1111', forms: [
    FormEntry(id: '5', title: 'Form 1', formData: {'soru1': 'Cevap 1E', 'soru2': 'Cevap 2E', 'soru3': 'Cevap 3E'}, isSent: true, isChecked: true),
  ]),
  Animal(id: 5, name: 'Hayvan 5', species: 'Hamster', age: 1, ownerName: 'Can Bonomo', ownerContact: '555-2222', forms: [
    FormEntry(id: '6', title: 'Form 1', formData: {'soru1': 'Cevap 1F', 'soru2': 'Cevap 2F', 'soru3': 'Cevap 3F'}, isSent: false, isChecked: false),
    FormEntry(id: '7', title: 'Form 2', formData: {'soru1': 'Cevap 1G', 'soru2': 'Cevap 2G', 'soru3': 'Cevap 3G'}, isSent: true, isChecked: false),
  ]),
  Animal(id: 6, name: 'Hayvan 6', species: 'Balık', age: 1, ownerName: 'Derya Deniz', ownerContact: '555-3333', forms: [
    FormEntry(id: '8', title: 'Form 1', formData: {'soru1': 'Cevap 1H', 'soru2': 'Cevap 2H', 'soru3': 'Cevap 3H'}, isSent: false, isChecked: false),
  ]),
  Animal(id: 7, name: 'Hayvan 7', species: 'Köpek', age: 5, ownerName: 'Ahmet Çelik', ownerContact: '555-4444', forms: [
    FormEntry(id: '9', title: 'Form 1', formData: {'soru1': 'Cevap 1I', 'soru2': 'Cevap 2I', 'soru3': 'Cevap 3I'}, isSent: true, isChecked: false),
  ]),
  Animal(id: 8, name: 'Hayvan 8', species: 'Kedi', age: 4, ownerName: 'Fatma Şahin', ownerContact: '555-5555', forms: []),
  Animal(id: 9, name: 'Hayvan 9', species: 'Papağan', age: 2, ownerName: 'Mustafa Arslan', ownerContact: '555-6666', forms: [
    FormEntry(id: '10', title: 'Form 1', formData: {'soru1': 'Cevap 1J', 'soru2': 'Cevap 2J', 'soru3': 'Cevap 3J'}, isSent: true, isChecked: true),
    FormEntry(id: '11', title: 'Form 2', formData: {'soru1': 'Cevap 1K', 'soru2': 'Cevap 2K', 'soru3': 'Cevap 3K'}, isSent: true, isChecked: true),
  ]),
  Animal(id: 10, name: 'Hayvan 10', species: 'Kaplumbağa', age: 10, ownerName: 'Emine Doğan', ownerContact: '555-7777', forms: [
    FormEntry(id: '12', title: 'Form 1', formData: {'soru1': 'Cevap 1L', 'soru2': 'Cevap 2L', 'soru3': 'Cevap 3L'}, isSent: false, isChecked: true),
  ]),
  Animal(id: 11, name: 'Hayvan 11', species: 'Köpek', age: 2, ownerName: 'Hasan Aydın', ownerContact: '555-8888', forms: [
    FormEntry(id: '13', title: 'Form 1', formData: {'soru1': 'Cevap 1M', 'soru2': 'Cevap 2M', 'soru3': 'Cevap 3M'}, isSent: false, isChecked: false),
  ]),
  Animal(id: 12, name: 'Hayvan 12', species: 'Kedi', age: 6, ownerName: 'Hüseyin Polat', ownerContact: '555-9999', forms: [
    FormEntry(id: '14', title: 'Form 1', formData: {'soru1': 'Cevap 1N', 'soru2': 'Cevap 2N', 'soru3': 'Cevap 3N'}, isSent: true, isChecked: false),
    FormEntry(id: '15', title: 'Form 2', formData: {'soru1': 'Cevap 1O', 'soru2': 'Cevap 2O', 'soru3': 'Cevap 3O'}, isSent: false, isChecked: false),
  ]),
  Animal(id: 13, name: 'Hayvan 13', species: 'İguana', age: 4, ownerName: 'Elif Aksoy', ownerContact: '555-1010', forms: [
    FormEntry(id: '16', title: 'Form 1', formData: {'soru1': 'Cevap 1P', 'soru2': 'Cevap 2P', 'soru3': 'Cevap 3P'}, isSent: true, isChecked: true),
  ]),
  Animal(id: 14, name: 'Hayvan 14', species: 'Köpek', age: 7, ownerName: 'İbrahim Koç', ownerContact: '555-2020', forms: [
    FormEntry(id: '17', title: 'Form 1', formData: {'soru1': 'Cevap 1Q', 'soru2': 'Cevap 2Q', 'soru3': 'Cevap 3Q'}, isSent: true, isChecked: true),
    FormEntry(id: '18', title: 'Form 2', formData: {'soru1': 'Cevap 1R', 'soru2': 'Cevap 2R', 'soru3': 'Cevap 3R'}, isSent: false, isChecked: false),
  ]),
  Animal(id: 15, name: 'Hayvan 15', species: 'Kedi', age: 1, ownerName: 'Sultan Aslan', ownerContact: '555-3030', forms: [
    FormEntry(id: '19', title: 'Form 1', formData: {'soru1': 'Cevap 1S', 'soru2': 'Cevap 2S', 'soru3': 'Cevap 3S'}, isSent: true, isChecked: false),
  ]),
  Animal(id: 16, name: 'Hayvan 16', species: 'Yılan', age: 3, ownerName: 'Serpil Kurt', ownerContact: '555-4040', forms: [
    FormEntry(id: '20', title: 'Form 1', formData: {'soru1': 'Cevap 1T', 'soru2': 'Cevap 2T', 'soru3': 'Cevap 3T'}, isSent: false, isChecked: false),
  ]),
  Animal(id: 17, name: 'Hayvan 17', species: 'Fare', age: 1, ownerName: 'Osman Özdemir', ownerContact: '555-5050', forms: []),
  Animal(id: 18, name: 'Hayvan 18', species: 'Köpek', age: 8, ownerName: 'Meryem Yalçın', ownerContact: '555-6060', forms: [
    FormEntry(id: '21', title: 'Form 1', formData: {'soru1': 'Cevap 1U', 'soru2': 'Cevap 2U', 'soru3': 'Cevap 3U'}, isSent: true, isChecked: true),
  ]),
  Animal(id: 19, name: 'Hayvan 19', species: 'Kedi', age: 3, ownerName: 'Halil Mutlu', ownerContact: '555-7070', forms: [
    FormEntry(id: '22', title: 'Form 1', formData: {'soru1': 'Cevap 1V', 'soru2': 'Cevap 2V', 'soru3': 'Cevap 3V'}, isSent: true, isChecked: false),
  ]),
  Animal(id: 20, name: 'Hayvan 20', species: 'At', age: 5, ownerName: 'Esra Yıldırım', ownerContact: '555-8080', forms: [
    FormEntry(id: '23', title: 'Form 1', formData: {'soru1': 'Cevap 1W', 'soru2': 'Cevap 2W', 'soru3': 'Cevap 3W'}, isSent: false, isChecked: false),
    FormEntry(id: '24', title: 'Form 2', formData: {'soru1': 'Cevap 1X', 'soru2': 'Cevap 2X', 'soru3': 'Cevap 3X'}, isSent: true, isChecked: false),
    FormEntry(id: '25', title: 'Form 3', formData: {'soru1': 'Cevap 1Y', 'soru2': 'Cevap 2Y', 'soru3': 'Cevap 3Y'}, isSent: true, isChecked: true),
  ]),
];
