class RecommendedLawyer{
  const RecommendedLawyer({required this.name, required this.designation, required this.location, required this.language, required this.specialization});

  final String name;
  final String designation;
  final String location;
  final String language;
  final Specialization specialization;

}

enum Specialization {civilLaw, criminalLaw, corporateLaw, familyLaw, laborAndEmploymentLaw, taxLaw, iPLaw, realEstateLaw}
const correspondingTitle = {
  Specialization.civilLaw: 'Civil Law',
  Specialization.criminalLaw: 'Criminal Law',
  Specialization.corporateLaw: 'Corporate Law',
  Specialization.familyLaw: 'Family Law',
  Specialization.laborAndEmploymentLaw: 'Labor and Employment Law',
  Specialization.taxLaw: 'Tax Law',
  Specialization.iPLaw: 'IP Law',
  Specialization.realEstateLaw: 'Real Estate Law',
};