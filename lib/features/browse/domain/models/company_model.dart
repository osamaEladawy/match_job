class CompanyModel {
  final int? id;
  final String nameCompany;
  final String addressCompany;
  final String imageCompany;
  final num theLessSalary;
  final num theGreatSalary;
  final num averageRate;

  CompanyModel({
    required this.id,
    required this.nameCompany,
    required this.addressCompany,
    required this.imageCompany,
    required this.theLessSalary,
    required this.theGreatSalary,
    required this.averageRate,
  });
}
