class Users {
  final String? email;
  final bool? emailVerified;
  final String? name;
  final String? phone;
  final bool? phoneVerified;
  final String? sub;

  Users({
    this.email,
    this.emailVerified,
    this.name,
    this.phone,
    this.phoneVerified,
    this.sub,
  });

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      email: json['email'] as String?,
      emailVerified: json['email_verified'] as bool?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      phoneVerified: json['phone_verified'] as bool?,
      sub: json['sub'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'email_verified': emailVerified,
      'name': name,
      'phone': phone,
      'phone_verified': phoneVerified,
      'sub': sub,
    };
  }
}
