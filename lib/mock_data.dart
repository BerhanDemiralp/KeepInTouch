import 'package:keepintouch/models.dart';

// --- USERS ---
final List<User> mockUsers = [
  User(id: 1, username: 'berhan', email: 'berhan@example.com', role: 'admin', createdAt: DateTime(2023, 1, 1)),
  User(id: 2, username: 'aylin', email: 'aylin@example.com', role: 'user', createdAt: DateTime(2023, 2, 10)),
  User(id: 3, username: 'can', email: 'can@example.com', role: 'user', createdAt: DateTime(2023, 3, 15)),
];

// --- OWNERS ---
final List<Owner> mockOwners = [
  Owner(id: 1, name: 'Ali Veli', contact: '555-1234', createdAt: DateTime(2023, 1, 1), updatedAt: DateTime(2023, 1, 1)),
  Owner(id: 2, name: 'Ayşe Yılmaz', contact: '555-5678', createdAt: DateTime(2023, 1, 2), updatedAt: DateTime(2023, 1, 2)),
  Owner(id: 3, name: 'Mehmet Kaya', contact: '555-9012', createdAt: DateTime(2023, 1, 3), updatedAt: DateTime(2023, 1, 3)),
  Owner(id: 4, name: 'Zeynep Demir', contact: '555-1111', createdAt: DateTime(2023, 1, 4), updatedAt: DateTime(2023, 1, 4)),
  Owner(id: 5, name: 'Can Bonomo', contact: '555-2222', createdAt: DateTime(2023, 1, 5), updatedAt: DateTime(2023, 1, 5)),
  Owner(id: 6, name: 'Derya Deniz', contact: '555-3333', createdAt: DateTime(2023, 1, 6), updatedAt: DateTime(2023, 1, 6)),
  Owner(id: 7, name: 'Ahmet Çelik', contact: '555-4444', createdAt: DateTime(2023, 1, 7), updatedAt: DateTime(2023, 1, 7)),
  Owner(id: 8, name: 'Fatma Şahin', contact: '555-5555', createdAt: DateTime(2023, 1, 8), updatedAt: DateTime(2023, 1, 8)),
  Owner(id: 9, name: 'Mustafa Arslan', contact: '555-6666', createdAt: DateTime(2023, 1, 9), updatedAt: DateTime(2023, 1, 9)),
  Owner(id: 10, name: 'Emine Doğan', contact: '555-7777', createdAt: DateTime(2023, 1, 10), updatedAt: DateTime(2023, 1, 10)),
];

// --- FORM ENTRIES ---
final List<FormEntry> mockFormEntries = [
  // Animal 1
  FormEntry(id: '1', animalId: 1, title: '', formData: {'General Appearance': 'Good', 'Behavior': 'Friendly', 'Eating Habits': 'Normal'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 5, 1), sentAt: DateTime(2024, 5, 2), checkedAt: DateTime(2024, 5, 3), updatedAt: DateTime(2024, 5, 3)),
  FormEntry(id: '2', animalId: 1, title: '', formData: {'General Appearance': 'A bit tired', 'Behavior': 'Calm', 'Eating Habits': 'Slightly reduced'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 6, 1), sentAt: DateTime(2024, 6, 2), checkedAt: DateTime(2024, 6, 3), updatedAt: DateTime(2024, 6, 2)),
  FormEntry(id: '3', animalId: 1, title: '', formData: {'General Appearance': 'Good', 'Behavior': 'Normal', 'Eating Habits': 'Good'}, isSent: true, isChecked: true, createdAt: DateTime(2024, 7, 1), sentAt: DateTime(2024, 7, 1), checkedAt: DateTime(2024, 7, 2), updatedAt: DateTime(2024, 7, 2)),

  // Animal 2
  FormEntry(id: '4', animalId: 2, title: '', formData: {'General Appearance': 'Excellent', 'Behavior': 'Playful', 'Eating Habits': 'Hearty'}, isSent: true, isChecked: true, checkedByUserId: 2, createdAt: DateTime(2024, 6, 5), sentAt: DateTime(2024, 6, 6), checkedAt: DateTime(2024, 6, 7), updatedAt: DateTime(2024, 6, 7)),
  FormEntry(id: '5', animalId: 2, title: '', formData: {}, isSent: false, isChecked: false, createdAt: DateTime(2024, 6, 20), updatedAt: DateTime(2024, 6, 20)),

  // Animal 3
  FormEntry(id: '6', animalId: 3, title: '', formData: {'General Appearance': 'Bright feathers', 'Behavior': 'Active and vocal', 'Eating Habits': 'Good'}, isSent: true, isChecked: true, checkedByUserId: 2, createdAt: DateTime(2024, 5, 10), sentAt: DateTime(2024, 5, 11), checkedAt: DateTime(2024, 5, 12), updatedAt: DateTime(2024, 5, 11)),

  // Animal 4
  FormEntry(id: '7', animalId: 4, title: '', formData: {'General Appearance': 'Healthy coat', 'Behavior': 'Energetic', 'Eating Habits': 'Normal'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 4, 15), sentAt: DateTime(2024, 4, 15), checkedAt: DateTime(2024, 4, 16), updatedAt: DateTime(2024, 4, 16)),
  FormEntry(id: '8', animalId: 4, title: '', formData: {'General Appearance': 'Good', 'Behavior': 'Obedient', 'Eating Habits': 'Finishing all meals'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 5, 15), sentAt: DateTime(2024, 5, 15), checkedAt: DateTime(2024, 5, 16), updatedAt: DateTime(2024, 5, 16)),

  // Animal 5
  FormEntry(id: '9', animalId: 5, title: '', formData: {'General Appearance': 'Good', 'Behavior': 'Active', 'Eating Habits': 'Normal'}, isSent: true, isChecked: true, checkedByUserId: 2, createdAt: DateTime(2024, 6, 12), sentAt: DateTime(2024, 6, 13), checkedAt: DateTime(2024, 6, 14), updatedAt: DateTime(2024, 6, 14)),
  FormEntry(id: '10', animalId: 5, title: '', formData: {}, isSent: false, isChecked: false, createdAt: DateTime(2024, 7, 5), updatedAt: DateTime(2024, 7, 5)),

  // Animal 6
  FormEntry(id: '11', animalId: 6, title: '', formData: {'General Appearance': 'Clean water', 'Behavior': 'Swimming actively', 'Eating Habits': 'Eating flakes'}, isSent: true, isChecked: true, checkedByUserId: 3, createdAt: DateTime(2024, 3, 20), sentAt: DateTime(2024, 3, 21), checkedAt: DateTime(2024, 3, 22), updatedAt: DateTime(2024, 3, 21)),

  // Animal 7
  FormEntry(id: '12', animalId: 7, title: '', formData: {'General Appearance': 'Healthy', 'Behavior': 'Playful', 'Eating Habits': 'Good appetite'}, isSent: true, isChecked: true, checkedByUserId: 3, createdAt: DateTime(2024, 2, 22), sentAt: DateTime(2024, 2, 23), checkedAt: DateTime(2024, 2, 24), updatedAt: DateTime(2024, 2, 24)),
  FormEntry(id: '13', animalId: 7, title: '', formData: {'General Appearance': 'Limping slightly', 'Behavior': 'Lethargic', 'Eating Habits': 'Reduced'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 3, 22), sentAt: DateTime(2024, 3, 23), checkedAt: DateTime(2024, 3, 24), updatedAt: DateTime(2024, 3, 23)),

  // Animal 9
  FormEntry(id: '14', animalId: 9, title: '', formData: {'General Appearance': 'Plumage looks good', 'Behavior': 'Mimicking sounds', 'Eating Habits': 'Eating seeds'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 1, 30), sentAt: DateTime(2024, 1, 31), checkedAt: DateTime(2024, 2, 1), updatedAt: DateTime(2024, 2, 1)),

  // Animal 10
  FormEntry(id: '15', animalId: 10, title: '', formData: {}, isSent: false, isChecked: false, createdAt: DateTime(2024, 6, 18), updatedAt: DateTime(2024, 6, 18)),

  // More entries to reach 60
  FormEntry(id: '16', animalId: 1, title: '', formData: {'General Appearance': 'Energetic', 'Behavior': 'Good', 'Eating Habits': 'Normal'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 3, 1), sentAt: DateTime(2024, 3, 2), checkedAt: DateTime(2024, 3, 3), updatedAt: DateTime(2024, 3, 3)),
  FormEntry(id: '17', animalId: 2, title: '', formData: {'General Appearance': 'Fluffy coat', 'Behavior': 'Affectionate', 'Eating Habits': 'Eats well'}, isSent: true, isChecked: true, checkedByUserId: 2, createdAt: DateTime(2024, 1, 20), sentAt: DateTime(2024, 1, 21), checkedAt: DateTime(2024, 1, 22), updatedAt: DateTime(2024, 1, 22)),
  FormEntry(id: '18', animalId: 3, title: '', formData: {}, isSent: false, isChecked: false, createdAt: DateTime(2024, 6, 25), updatedAt: DateTime(2024, 6, 25)),
  FormEntry(id: '19', animalId: 4, title: '', formData: {'General Appearance': 'Very active', 'Behavior': 'Wags tail a lot', 'Eating Habits': 'Loves treats'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 6, 1), sentAt: DateTime(2024, 6, 2), checkedAt: DateTime(2024, 6, 3), updatedAt: DateTime(2024, 6, 3)),
  FormEntry(id: '20', animalId: 5, title: '', formData: {'General Appearance': 'Running on wheel', 'Behavior': 'Nocturnal', 'Eating Habits': 'Storing food'}, isSent: true, isChecked: true, checkedByUserId: 2, createdAt: DateTime(2024, 2, 14), sentAt: DateTime(2024, 2, 14), checkedAt: DateTime(2024, 2, 15), updatedAt: DateTime(2024, 2, 15)),
  FormEntry(id: '21', animalId: 6, title: '', formData: {'General Appearance': 'Clear water', 'Behavior': 'Normal', 'Eating Habits': 'Regular'}, isSent: true, isChecked: true, checkedByUserId: 2, createdAt: DateTime(2024, 5, 29), sentAt: DateTime(2024, 5, 30), checkedAt: DateTime(2024, 5, 31), updatedAt: DateTime(2024, 5, 30)),
  FormEntry(id: '22', animalId: 7, title: '', formData: {'General Appearance': 'Recovering well', 'Behavior': 'Resting', 'Eating Habits': 'Improving'}, isSent: true, isChecked: true, checkedByUserId: 3, createdAt: DateTime(2024, 4, 15), sentAt: DateTime(2024, 4, 16), checkedAt: DateTime(2024, 4, 17), updatedAt: DateTime(2024, 4, 16)),
  FormEntry(id: '23', animalId: 9, title: '', formData: {}, isSent: false, isChecked: false, createdAt: DateTime(2024, 3, 5), updatedAt: DateTime(2024, 3, 5)),
  FormEntry(id: '24', animalId: 10, title: '', formData: {'General Appearance': 'Shell is hard', 'Behavior': 'Slow', 'Eating Habits': 'Eats lettuce'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2023, 11, 15), sentAt: DateTime(2023, 11, 16), checkedAt: DateTime(2023, 11, 17), updatedAt: DateTime(2023, 11, 16)),
  FormEntry(id: '25', animalId: 1, title: '', formData: {'General Appearance': 'Shiny coat', 'Behavior': 'Likes to play fetch', 'Eating Habits': 'Good'}, isSent: true, isChecked: true, checkedByUserId: 3, createdAt: DateTime(2023, 12, 10), sentAt: DateTime(2023, 12, 11), checkedAt: DateTime(2023, 12, 12), updatedAt: DateTime(2023, 12, 12)),
  FormEntry(id: '26', animalId: 2, title: '', formData: {'General Appearance': 'Normal', 'Behavior': 'Good', 'Eating Habits': 'Good'}, isSent: true, isChecked: true, checkedByUserId: 2, createdAt: DateTime(2024, 5, 20), sentAt: DateTime(2024, 5, 21), checkedAt: DateTime(2024, 5, 22), updatedAt: DateTime(2024, 5, 21)),
  FormEntry(id: '27', animalId: 4, title: '', formData: {'General Appearance': 'Good', 'Behavior': 'Well-behaved', 'Eating Habits': 'Normal'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 3, 18), sentAt: DateTime(2024, 3, 18), checkedAt: DateTime(2024, 3, 19), updatedAt: DateTime(2024, 3, 19)),
  FormEntry(id: '28', animalId: 5, title: '', formData: {'General Appearance': 'Healthy', 'Behavior': 'Curious', 'Eating Habits': 'Loves seeds'}, isSent: true, isChecked: true, checkedByUserId: 2, createdAt: DateTime(2024, 4, 22), sentAt: DateTime(2024, 4, 23), checkedAt: DateTime(2024, 4, 24), updatedAt: DateTime(2024, 4, 24)),
  FormEntry(id: '29', animalId: 7, title: '', formData: {}, isSent: false, isChecked: false, createdAt: DateTime(2024, 6, 30), updatedAt: DateTime(2024, 6, 30)),
  FormEntry(id: '30', animalId: 9, title: '', formData: {'General Appearance': 'Colorful feathers', 'Behavior': 'Talkative', 'Eating Habits': 'Likes fruit'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 4, 1), sentAt: DateTime(2024, 4, 2), checkedAt: DateTime(2024, 4, 3), updatedAt: DateTime(2024, 4, 3)),
  FormEntry(id: '31', animalId: 1, title: '', formData: {'General Appearance': 'Clean', 'Behavior': 'Happy', 'Eating Habits': 'Good'}, isSent: true, isChecked: true, checkedByUserId: 3, createdAt: DateTime(2024, 4, 5), sentAt: DateTime(2024, 4, 6), checkedAt: DateTime(2024, 4, 7), updatedAt: DateTime(2024, 4, 7)),
  FormEntry(id: '32', animalId: 2, title: '', formData: {}, isSent: false, isChecked: false, createdAt: DateTime(2024, 7, 2), updatedAt: DateTime(2024, 7, 2)),
  FormEntry(id: '33', animalId: 3, title: '', formData: {'General Appearance': 'Excellent', 'Behavior': 'Singing', 'Eating Habits': 'Good'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 6, 10), sentAt: DateTime(2024, 6, 11), checkedAt: DateTime(2024, 6, 12), updatedAt: DateTime(2024, 6, 12)),
  FormEntry(id: '34', animalId: 4, title: '', formData: {'General Appearance': 'Tired after play', 'Behavior': 'Good', 'Eating Habits': 'Hungry'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 5, 25), sentAt: DateTime(2024, 5, 26), checkedAt: DateTime(2024, 5, 27), updatedAt: DateTime(2024, 5, 26)),
  FormEntry(id: '35', animalId: 5, title: '', formData: {}, isSent: false, isChecked: false, createdAt: DateTime(2024, 6, 15), updatedAt: DateTime(2024, 6, 15)),
  FormEntry(id: '36', animalId: 6, title: '', formData: {'General Appearance': 'Clean tank', 'Behavior': 'Normal', 'Eating Habits': 'Regular'}, isSent: true, isChecked: true, checkedByUserId: 2, createdAt: DateTime(2024, 6, 28), sentAt: DateTime(2024, 6, 29), checkedAt: DateTime(2024, 6, 30), updatedAt: DateTime(2024, 6, 30)),
  FormEntry(id: '37', animalId: 7, title: '', formData: {'General Appearance': 'No limping', 'Behavior': 'More active', 'Eating Habits': 'Normal'}, isSent: true, isChecked: true, checkedByUserId: 3, createdAt: DateTime(2024, 5, 1), sentAt: DateTime(2024, 5, 2), checkedAt: DateTime(2024, 5, 3), updatedAt: DateTime(2024, 5, 2)),
  FormEntry(id: '38', animalId: 9, title: '', formData: {'General Appearance': 'Good', 'Behavior': 'Learning new words', 'Eating Habits': 'Good'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 5, 18), sentAt: DateTime(2024, 5, 19), checkedAt: DateTime(2024, 5, 20), updatedAt: DateTime(2024, 5, 19)),
  FormEntry(id: '39', animalId: 10, title: '', formData: {'General Appearance': 'Healthy shell', 'Behavior': 'Normal', 'Eating Habits': 'Good'}, isSent: true, isChecked: true, checkedByUserId: 3, createdAt: DateTime(2024, 4, 20), sentAt: DateTime(2024, 4, 21), checkedAt: DateTime(2024, 4, 22), updatedAt: DateTime(2024, 4, 22)),
  FormEntry(id: '40', animalId: 1, title: '', formData: {'General Appearance': 'Good', 'Behavior': 'Plays well with others', 'Eating Habits': 'Normal'}, isSent: true, isChecked: true, checkedByUserId: 2, createdAt: DateTime(2024, 2, 15), sentAt: DateTime(2024, 2, 16), checkedAt: DateTime(2024, 2, 17), updatedAt: DateTime(2024, 2, 16)),
  FormEntry(id: '41', animalId: 2, title: '', formData: {'General Appearance': 'Ready for adoption', 'Behavior': 'Sweet', 'Eating Habits': 'Good'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 3, 10), sentAt: DateTime(2024, 3, 11), checkedAt: DateTime(2024, 3, 12), updatedAt: DateTime(2024, 3, 12)),
  FormEntry(id: '42', animalId: 4, title: '', formData: {'General Appearance': 'Good', 'Behavior': 'Listens to commands', 'Eating Habits': 'Normal'}, isSent: true, isChecked: true, checkedByUserId: 3, createdAt: DateTime(2024, 2, 20), sentAt: DateTime(2024, 2, 21), checkedAt: DateTime(2024, 2, 22), updatedAt: DateTime(2024, 2, 21)),
  FormEntry(id: '43', animalId: 5, title: '', formData: {}, isSent: false, isChecked: false, createdAt: DateTime(2024, 5, 30), updatedAt: DateTime(2024, 5, 30)),
  FormEntry(id: '44', animalId: 7, title: '', formData: {'General Appearance': 'Stable', 'Behavior': 'Calm', 'Eating Habits': 'Normal'}, isSent: true, isChecked: true, checkedByUserId: 2, createdAt: DateTime(2024, 6, 22), sentAt: DateTime(2024, 6, 23), checkedAt: DateTime(2024, 6, 24), updatedAt: DateTime(2024, 6, 24)),
  FormEntry(id: '45', animalId: 9, title: '', formData: {}, isSent: false, isChecked: false, createdAt: DateTime(2024, 6, 5), updatedAt: DateTime(2024, 6, 5)),
  FormEntry(id: '46', animalId: 10, title: '', formData: {'General Appearance': 'Good', 'Behavior': 'Normal', 'Eating Habits': 'Good'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 7, 1), sentAt: DateTime(2024, 7, 1), checkedAt: DateTime(2024, 7, 2), updatedAt: DateTime(2024, 7, 1)),
  FormEntry(id: '47', animalId: 1, title: '', formData: {'General Appearance': 'Good', 'Behavior': 'Normal', 'Eating Habits': 'Good'}, isSent: true, isChecked: true, createdAt: DateTime(2024, 7, 10), sentAt: DateTime(2024, 7, 10), checkedAt: DateTime(2024, 7, 11), updatedAt: DateTime(2024, 7, 11)),
  FormEntry(id: '48', animalId: 2, title: '', formData: {'General Appearance': 'Adapting well', 'Behavior': 'Friendly', 'Eating Habits': 'Good'}, isSent: true, isChecked: true, checkedByUserId: 3, createdAt: DateTime(2024, 4, 12), sentAt: DateTime(2024, 4, 13), checkedAt: DateTime(2024, 4, 14), updatedAt: DateTime(2024, 4, 14)),
  FormEntry(id: '49', animalId: 4, title: '', formData: {'General Appearance': 'Learning fast', 'Behavior': 'Energetic', 'Eating Habits': 'Normal'}, isSent: true, isChecked: true, checkedByUserId: 2, createdAt: DateTime(2024, 5, 5), sentAt: DateTime(2024, 5, 6), checkedAt: DateTime(2024, 5, 7), updatedAt: DateTime(2024, 5, 6)),
  FormEntry(id: '50', animalId: 6, title: '', formData: {}, isSent: false, isChecked: false, createdAt: DateTime(2024, 7, 3), updatedAt: DateTime(2024, 7, 3)),
  FormEntry(id: '51', animalId: 7, title: '', formData: {}, isSent: false, isChecked: false, createdAt: DateTime(2024, 6, 28), updatedAt: DateTime(2024, 6, 28)),
  FormEntry(id: '52', animalId: 9, title: '', formData: {'General Appearance': 'Likes new perch', 'Behavior': 'Happy', 'Eating Habits': 'Good'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 6, 18), sentAt: DateTime(2024, 6, 18), checkedAt: DateTime(2024, 6, 19), updatedAt: DateTime(2024, 6, 19)),
  FormEntry(id: '53', animalId: 10, title: '', formData: {'General Appearance': 'Healthy weight', 'Behavior': 'Normal', 'Eating Habits': 'Good'}, isSent: true, isChecked: true, checkedByUserId: 3, createdAt: DateTime(2024, 5, 15), sentAt: DateTime(2024, 5, 16), checkedAt: DateTime(2024, 5, 17), updatedAt: DateTime(2024, 5, 16)),
  FormEntry(id: '54', animalId: 1, title: '', formData: {'General Appearance': 'Good', 'Behavior': 'Normal', 'Eating Habits': 'Normal'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 1, 25), sentAt: DateTime(2024, 1, 26), checkedAt: DateTime(2024, 1, 27), updatedAt: DateTime(2024, 1, 26)),
  FormEntry(id: '55', animalId: 2, title: '', formData: {}, isSent: false, isChecked: false, createdAt: DateTime(2024, 7, 5), updatedAt: DateTime(2024, 7, 5)),
  FormEntry(id: '56', animalId: 3, title: '', formData: {'General Appearance': 'Ready to travel', 'Behavior': 'Calm', 'Eating Habits': 'Normal'}, isSent: true, isChecked: true, checkedByUserId: 2, createdAt: DateTime(2024, 5, 22), sentAt: DateTime(2024, 5, 23), checkedAt: DateTime(2024, 5, 24), updatedAt: DateTime(2024, 5, 24)),
  FormEntry(id: '57', animalId: 4, title: '', formData: {'General Appearance': 'Likes new food', 'Behavior': 'Good', 'Eating Habits': 'Normal'}, isSent: true, isChecked: true, checkedByUserId: 2, createdAt: DateTime(2024, 4, 10), sentAt: DateTime(2024, 4, 11), checkedAt: DateTime(2024, 4, 12), updatedAt: DateTime(2024, 4, 11)),
  FormEntry(id: '58', animalId: 5, title: '', formData: {}, isSent: false, isChecked: false, createdAt: DateTime(2024, 6, 22), updatedAt: DateTime(2024, 6, 22)),
  FormEntry(id: '59', animalId: 7, title: '', formData: {'General Appearance': 'Healed well', 'Behavior': 'Happy', 'Eating Habits': 'Normal'}, isSent: true, isChecked: true, checkedByUserId: 1, createdAt: DateTime(2024, 6, 9), sentAt: DateTime(2024, 6, 10), checkedAt: DateTime(2024, 6, 11), updatedAt: DateTime(2024, 6, 11)),
  FormEntry(id: '60', animalId: 9, title: '', formData: {'General Appearance': 'Curious', 'Behavior': 'Normal', 'Eating Habits': 'Good'}, isSent: true, isChecked: true, checkedByUserId: 3, createdAt: DateTime(2024, 3, 28), sentAt: DateTime(2024, 3, 29), checkedAt: DateTime(2024, 3, 30), updatedAt: DateTime(2024, 3, 29)),
];

// --- ANIMALS ---
final List<Animal> mockAnimals = [
  Animal(id: 1, ownerId: 1, name: 'Buddy', species: 'Köpek', age: 3, lastCheckDate: DateTime(2024, 6, 1), createdAt: DateTime(2023, 1, 5), updatedAt: DateTime(2023, 1, 5), owner: mockOwners[0], forms: mockFormEntries.where((f) => f.animalId == 1).toList()),
  Animal(id: 2, ownerId: 2, name: 'Whiskers', species: 'Kedi', age: 2, lastCheckDate: DateTime(2024, 6, 5), createdAt: DateTime(2023, 1, 6), updatedAt: DateTime(2023, 1, 6), owner: mockOwners[1], forms: mockFormEntries.where((f) => f.animalId == 2).toList()),
  Animal(id: 3, ownerId: 3, name: 'Polly', species: 'Kuş', age: 1, lastCheckDate: DateTime(2024, 5, 10), createdAt: DateTime(2023, 1, 7), updatedAt: DateTime(2023, 1, 7), owner: mockOwners[2], forms: mockFormEntries.where((f) => f.animalId == 3).toList()),
  Animal(id: 4, ownerId: 4, name: 'Max', species: 'Köpek', age: 5, lastCheckDate: DateTime(2024, 6, 1), createdAt: DateTime(2022, 8, 15), updatedAt: DateTime(2022, 8, 15), owner: mockOwners[3], forms: mockFormEntries.where((f) => f.animalId == 4).toList()),
  Animal(id: 5, ownerId: 5, name: 'Squeaky', species: 'Hamster', age: 1, lastCheckDate: DateTime(2024, 6, 12), createdAt: DateTime(2023, 9, 1), updatedAt: DateTime(2023, 9, 1), owner: mockOwners[4], forms: mockFormEntries.where((f) => f.animalId == 5).toList()),
  Animal(id: 6, ownerId: 6, name: 'Goldie', species: 'Balık', age: 1, lastCheckDate: DateTime(2024, 5, 29), createdAt: DateTime(2023, 10, 20), updatedAt: DateTime(2023, 10, 20), owner: mockOwners[5], forms: mockFormEntries.where((f) => f.animalId == 6).toList()),
  Animal(id: 7, ownerId: 7, name: 'Rocky', species: 'Köpek', age: 7, createdAt: DateTime(2020, 4, 10), updatedAt: DateTime(2020, 4, 10), owner: mockOwners[6], forms: mockFormEntries.where((f) => f.animalId == 7).toList()),
  Animal(id: 8, ownerId: 8, name: 'Misty', species: 'Kedi', age: 4, createdAt: DateTime(2021, 11, 11), updatedAt: DateTime(2021, 11, 11), owner: mockOwners[7], forms: []), // No forms
  Animal(id: 9, ownerId: 9, name: 'Captain', species: 'Papağan', age: 2, createdAt: DateTime(2022, 5, 3), updatedAt: DateTime(2022, 5, 3), owner: mockOwners[8], forms: mockFormEntries.where((f) => f.animalId == 9).toList()),
  Animal(id: 10, ownerId: 10, name: 'Sheldon', species: 'Kaplumbağa', age: 10, createdAt: DateTime(2014, 8, 22), updatedAt: DateTime(2014, 8, 22), owner: mockOwners[9], forms: mockFormEntries.where((f) => f.animalId == 10).toList()),
];
