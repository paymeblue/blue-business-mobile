class Beneficiary {
  final int id;
  final String identifier; // either phone number or wallet id for now
  final String firstName;
  final BeneficiaryType beneficiaryType;
  final String lastName;

  Beneficiary(
      {required this.id,
      required this.identifier,
      required this.beneficiaryType,
      required this.firstName,
      required this.lastName});

  String getInitials() {
    return "${firstName[0].toUpperCase()}${lastName[0].toUpperCase()}";
  }
}

enum BeneficiaryType { blue, phone, bills }
