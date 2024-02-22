class PrisonerProfile{
  const PrisonerProfile({required this.name, required this.age, required this.location, required this.languages,this.ongoing_cases, this.previous_cases, required this.natureOfOffense, required this.stageOfCase,});

  final String name;
  final int age;
  final String location;
  final String languages;
  final String natureOfOffense;
  final String stageOfCase;
  final Case? ongoing_cases;
  final Case? previous_cases;
}

class Case{
  const Case({required this.case_name});

  final String case_name;

}