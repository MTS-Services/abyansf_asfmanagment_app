class OtpVerificationModel {
  String? _code;
  String? _email;

  OtpVerificationModel({String? code, String? email}) {
    if (code != null) {
      _code = code;
    }
    if (email != null) {
      _email = email;
    }
  }

  // Getters and Setters
  String? get code => _code;
  set code(String? code) => _code = code;

  String? get email => _email;
  set email(String? email) => _email = email;

  // From JSON constructor
  OtpVerificationModel.fromJson(Map<String, dynamic> json) {
    _code = json['code'];
    _email = json['email'];
  }

  // To JSON method
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = _code;
    data['email'] = _email;
    return data;
  }
}

