class RegistrationModel {
  final String name;
  final String email;
  final String whatsapp;
  final String? fcmToken;

  RegistrationModel({
    required this.name,
    required this.email,
    required this.whatsapp,
    this.fcmToken,
  });

  // From JSON
  factory RegistrationModel.fromJson(Map<String, dynamic> json) {
    return RegistrationModel(
      name: json['name'],
      email: json['email'],
      whatsapp: json['whatsapp'],
      fcmToken: json['fcm_token'],
    );
  }

  // To JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'whatsapp': whatsapp,
      'fcm_token': fcmToken,
    };
  }
}
