import 'package:github_search/home/domain/entity/user.dart';

class UserModel extends User {
  UserModel({
    login,
    id,
    avatarUrl,
    location,
    email,
    bio,
  }) : super(
          login: login,
          id: id,
          avatarUrl: avatarUrl,
          location: location,
          email: email,
          bio: bio,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        login: json["login"] ?? "Nome não encontrado",
        id: json["id"] ?? "",
        avatarUrl: json["avatar_url"] ?? "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
        location: json["location"] ?? "Não foi possível carregar essa informação.",
        email: json["email"] ?? "Não foi possível carregar essa informação.",
        bio: json["bio"] ?? "Não foi possível carregar essa informação.",
      );

}