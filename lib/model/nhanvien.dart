class NhanVien {
  late String userName;
  late String passWord;
  late String fullName;
  late String phone;

  NhanVien({
    required this.userName,
    required this.passWord,
    required this.fullName,
    required this.phone,
  });

  NhanVien.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    passWord = json['passWord'];
    fullName = json['fullName'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userName'] = userName;
    data['passWord'] = passWord;
    data['fullName'] = fullName;
    data['phone'] = phone;
    return data;
  }
}
