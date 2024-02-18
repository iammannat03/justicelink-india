import 'package:jli_frontend/models/recommended_lawyer.dart';

class LawyerProfile{
  const LawyerProfile({required this.name, required this.age, required this.designation, required this.specialization, required this.location, required this.languages, required this.education, required this.gender});

  final String name;
  final int age;
  final Gender gender;
  final String designation;
  final Specialization specialization;
  final String location;
  final String languages;
  final String education;



}

enum Gender{male, female, other}