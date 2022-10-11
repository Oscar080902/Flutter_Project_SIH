class UserModel {
  late String? email;
  late String? wrool;
  late String? uid;

// receiving data
  UserModel({this.uid, this.email, this.wrool});
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      wrool: map['wrool'],
    );
  }
// sending data
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'wrool': wrool,
    };
  }
}
