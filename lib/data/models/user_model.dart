class userModel {
  String? id;
  String? email;
  String? name;
  userModel({required this.email, required this.id, required this.name});
  userModel.fromFireStore(Map<String, dynamic> data) {
    id = data["id"];
    email = data["data"];
    name = data["name"];
  }
  Map<String, dynamic> toFirestore() {
    return {
      "id": id,
      "email": email,
      "name": name,
    };
  }
}
