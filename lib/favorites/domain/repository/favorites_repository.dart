import 'package:github_search/home/domain/entity/user.dart';

abstract class FavoritesRepository {
  Future<List<User>> findAll();
  Future<void> save(User user);
  Future<void> delete(User user);
}